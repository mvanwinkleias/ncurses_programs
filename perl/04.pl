#!/usr/bin/perl
#
# Copyright (C) 2003 by Virtusa Corporation
# http://www.virtusa.com
#
# Anuradha Ratnaweera
# http://www.linux.lk/~anuradha/
#

# We use addstr() instead of printw()

use strict;
use warnings;

use Curses;

my $mesg = "Enter a string: ";
my ($row, $col, $str);

initscr();
getmaxyx($row, $col);
addstr($row / 2, ($col - length($mesg)) / 2, $mesg);
getstr($str);
addstr($LINES - 2, 0, "You Entered: $str");
getch();
endwin();

