#!/usr/bin/env python3

import sys
import random
if len(sys.argv) != 2:
    print("Usage: ./this.py <test size>")
    exit(1)

test_size = int(sys.argv[1])
prob_skip_a_node = 0.5
edge_per_node_begin = 2
edge_per_node_end = 16

def iToVarName(i):
    return 'n'+str(i)

print('''#!./exp4
# `./exp4 input` not implemented, so you cannot run `./input` directly.

CreateGraph directed_unweighted_graph
Select 0
''')

for i in range(test_size):
    print('PutVex {}`n{}'.format(i, i))

for i in range(test_size):
    if random.random() < 0.5:
        continue
    for _ in range(random.randint(edge_per_node_begin, edge_per_node_end)):
        # May have multiedge / selfring
        j = random.randint(0, test_size)
        print('InsertArc `n{}`n{}'.format(i, j))

print('''
DFSTraverse
BFSTraverse
''')
