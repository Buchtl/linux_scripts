

cat <<EOF > ~/.local/share/applications/intellij-idea-ultimate.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA Ultimate
Icon=/opt/software/idea-IU/bin/idea.png
Exec="/opt/software/idea-IU/bin/idea" %f
Comment=The Ultimate Edition of IntelliJ IDEA
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-idea
EOF

chmod +x ~/.local/share/applications/intellij-idea-ultimate.desktop
update-desktop-database ~/.local/share/applications
