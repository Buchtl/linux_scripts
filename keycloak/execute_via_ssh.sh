#!/bin/bash
script=$1

ssh pi@pi4b 'bash -s' < $script

scp pi@pi4b:/tmp/charger.json .
