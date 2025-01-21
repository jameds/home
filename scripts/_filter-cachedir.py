#!/usr/bin/env python3

import sys

lines = {}
for line in sys.stdin:
    t = line.rfind('/') + 1
    k = line[:t]
    if not lines.get(k):
        lines[k] = []
    lines[k].append(line[t:-1])

for k, v in lines.items():
    if 'CACHEDIR.TAG' in v:
        t = len(k)
        for k2, v2 in lines.items():
            if k2[:t] == k:
                v2.clear()
        v.append('CACHEDIR.TAG')

for k, v in lines.items():
    for p in v:
        print(k + p)
