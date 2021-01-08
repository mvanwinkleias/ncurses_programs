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

my $mesg = "Just a string";
my ($row, $col);

initscr();
getmaxyx($row, $col);
addstr($row / 2, ($col - length($mesg)) / 2, $mesg);
addstr($row - 2, 0, "This screen has $row rows and $col columns\n");
refresh();
getch();
endwin();

