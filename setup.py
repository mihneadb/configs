#!/usr/bin/env python2
import os
import sys

if 'linux' in sys.platform:
    PLATFORM = 'linux'
else:
    PLATFORM = 'mac'
# no Win support

here = os.path.abspath(os.path.dirname(__file__))
home = os.path.expanduser('~')

# (src filename, dest filename)
FILES_TO_LINK = (
    ('bundles.vim', '.bundles.vim'),
    ('gitconfig', '.gitconfig'),
    ('gitignore', '.gitignore'),
    ('hgignore', '.hgignore'),
    ('hgrc', '.hgrc'),
    ('inputrc', '.inputrc'),
    ('linux_aliases' if PLATFORM == 'linux' else 'mac_aliases', '.aliases'),
    ('pythonrc', '.pythonrc'),
    ('tmux.conf', '.tmux.conf'),
    ('vimrc', '.vimrc'),
)

# files that need to be created
EMPTY_FILES = (
    '.python_history',
)


def setup_oh_my_zsh():
    os.system('git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh')
    if PLATFORM == 'linux':
        zshrc = os.path.join(here, 'linux_zshrc')
    else:
        zshrc = os.path.join(here, 'mac_zshrc')
    dest = os.path.join(home, '.zshrc')
    try:
        os.symlink(zshrc, dest)
    except:
        print >>sys.stderr, "Trouble linking %s to %s." % (zshrc, dest)
    else:
        print "Linked %s to %s." % (zshrc, dest)

    bindir = os.path.expanduser('~/bin')
    try:
        os.mkdir(bindir)
    except:
        print >>sys.stderr, "Trouble creating %s." % bindir
    else:
        print "Created empty %s." % bindir

    # add starter .paths file with ~/bin
    paths = os.path.join(home, '.paths')
    try:
        with open(paths, 'w') as f:
            f.write(bindir + '\n')
    except:
        print >>sys.stderr, "Trouble creating %s." % paths
    else:
        print "Created %s." % paths

    # set default
    print "Setting zsh as the default shell.."
    os.system('chsh -s `which zsh`')


def setup_vundle():
    os.system('git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle')
    print "Cloned vundle, don't forget to run 'upvim' ;)"


def main():

    for src, dest in FILES_TO_LINK:
        abs_src = os.path.join(here, src)
        abs_dest = os.path.join(home, dest)
        try:
            os.symlink(abs_src, abs_dest)
        except:
            print >>sys.stderr, "Trouble linking %s to %s." % (abs_src, abs_dest)
        else:
            print "Linked %s to %s." % (abs_src, abs_dest)


    for filename in EMPTY_FILES:
        path = os.path.join(home, filename)
        try:
            open(path, 'w').close()
        except:
            print >>sys.stderr, "Trouble creating empty file %s." % path
        else:
            print "Created empty file %s." % path

    setup_oh_my_zsh()
    setup_vundle()

    print "Done! Don't forget to set up ssh and gpg."


if __name__ == '__main__':
    print "Make sure you have git and zsh installed."
    raw_input("Press enter.. ")
    main()

