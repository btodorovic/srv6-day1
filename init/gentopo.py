#!/usr/bin/python3

import sys
import jinja2
import yaml
import os
import re

# Custom filter method for Jinja2
def regex_replace(s, find, replace):
    return re.sub(find, replace, s)

def clean_blanks(s):
    ret = ''
    for line in s.split('\n'):
        line = line.rstrip()
        if line[0:3]=='XXX':
            ret += '\n'
        elif len(line):
            ret += line + '\n'
    return ret

def render (yaml_data, template_file, output_file):
    templateFilePath = jinja2.FileSystemLoader(os.getcwd())
    jinjaEnv = jinja2.Environment(loader=templateFilePath,extensions=['jinja2.ext.loopcontrols','jinja2.ext.do'])
    jinjaEnv.filters['regex_replace'] = regex_replace

    template = jinjaEnv.get_template(template_file)

    f = open (output_file, 'w');
    f.write(clean_blanks(template.render(yaml_data).encode('ascii', 'ignore').decode('ascii')))
    f.close()

### MAIN

# - Read topology information
bridge = {}
for line in open('bridges.txt', 'r').readlines():
    host, ifd, bridge_id = line.strip().split()
    if host not in bridge:
        bridge[host] = {}
    if ifd not in bridge[host]:
        bridge[host][ifd] = bridge_id

yaml_data = { 'bridge': bridge }
template  = 'node.j2'
render (yaml_data, template, 'vm.conf')
