
# Random Stuff

## Process JSON
### Get key for object with given content/value
```
- name: Fetch data from REST API and extract UUID
  hosts: localhost
  gather_facts: no
  vars:
    api_url: "http://example.com/api/endpoint"
  tasks:
    - name: Make REST API call
      ansible.builtin.uri:
        url: "{{ api_url }}"
        method: GET
        return_content: yes
      register: api_response

    - name: Parse JSON and find UUID by path value
      set_fact:
        uuid_x: "{{ item.key }}"
      loop: "{{ api_response.json | dict2items }}"
      when: item.value.path is defined and item.value.path == 'mnt/alpha'

    - name: Display the UUID
      debug:
        msg: "UUID for path 'mnt/alpha' is {{ uuid_x }}"
```