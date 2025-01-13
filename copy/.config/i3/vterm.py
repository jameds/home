#!/usr/bin/python3

import json
import os
import subprocess

with open(os.environ['HOME'] +
          '/data/vterm.json') as config_file:
    config = json.load(config_file)

    workspaces = json.loads(subprocess.check_output([
        'i3-msg', '-t', 'get_workspaces']))

    focused = next(w for w in workspaces
                   if w['focused'])

    default_rule = next((r for r in config['rules']
                         if r.get('default')), None)
    workspace_rule = next(
        (r for r in config['rules']
         if r.get('workspace') == focused['name']), None)

    rule = workspace_rule

    if rule is None or not 'command' in rule:
        rule = default_rule

    if 'command' in rule:
        v = ['/bin/sh', '-c', rule['command']]
        os.execv(v[0], v)
