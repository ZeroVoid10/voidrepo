#!/usr/bin/python3

'''
Author: Zero Void
Remove the timestamp in youtube subtitles files.
'''

import sys

def timestamp_remove(filename):
    text = ""
    with open(filename) as f:
        for line in f.readlines()[2:]:
            if '-->' not in line:
                text += line

    with open(filename, 'w') as f:
        f.write(text)
        
if __name__ == '__main__':
    timestamp_remove(sys.argv[1])
