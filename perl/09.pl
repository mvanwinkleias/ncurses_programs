#!/usr/bin/perl
#
# Copyright (C) 2003 by Virtusa Corporation
# http://www.virtusa.com
#
# Anuradha Ratnaweera
# http://www.linux.lk/~anuradha/
#

use strict;
use warnings;

use Curses;

initscr();
unless (has_colors()) {
    endwin();
    print "Your terminal does not support color\n";
    exit 1;
}
start_color();
init_pair(1, COLOR_RED, COLOR_BLACK);

attron(COLOR_PAIR(1));
print_in_middle(stdscr, $LINES / 2, 0, 0, "Viola !!! In color ...");
attroff(COLOR_PAIR(1));
getch();
endwin();

sub print_in_middle {
    my $win = shift;
    my $starty = shift;
    my $startx = shift;
    my $width = shift;
    my $string = shift;

    $win = stdscr unless ($win);

	my ($x, $y);
    getyx($win, $y, $x);
    
    $x = $startx if ($startx);
    $y = $starty if ($starty);
    $width = $COLS unless ($width);
    my $length = length($string);
    my $temp = ($width - $length) / 2;
    $x = $startx + $temp;
    addstr($y, $x, $string);
    refresh();
}

