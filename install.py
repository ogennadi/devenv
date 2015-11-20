#!/usr/bin/env python3

import os
from os import getcwd, symlink
from os.path import exists, expanduser, join
import shutil
from sys import exit, stderr

files = ['.bashrc', '.vimrc', '.emacs.d', '.gemrc', '.ssh']
install_directory = join(expanduser('~'), 'code', 'devenv', 'tmp')
#install_directory = expanduser('~')

def destination(file):
    return join(install_directory, file)

def conflicting(file):
    return exists(destination(file))

def check(files):
    return filter(conflicting, files)

def install_file(file):
    filepath = join(getcwd(), file)
    os.symlink(filepath, destination(file))
    
def parse_arguments():
    parser = argparse.ArgumentParser(description='Install the dotfiles.')
    parser.add_argument('-f', help='overwrite existing dotfiles')
    parser.add_argument('installdir', help='directory to install dotfiles to')
    return parser.parse_args()

def install():
    conflicts = check(files)


    if not exists(install_directory):
        stderr.write("Install directory doesn't exist: " + install_directory)
        exit(1)

    if conflicts:
        stderr.write("Conflicts: " + str(conflicts) + "\n")
        exit(1)

    map(install_file, files)
