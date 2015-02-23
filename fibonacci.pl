#!/usr/bin/perl -w
use strict;

my @fibonacci;
my $limit;

print "Welcome to Fibonacci numbers. How high do you want to go?\n> ";
while (1) {
	$limit = <STDIN>;
	last if $limit =~ /^\d+$/;
	print "Invalid format. Please enter an integer.\nHow high do you want to go?\n> ";
}

while (1) {
	if (!($fibonacci[-1])) {
		push @fibonacci, 1;
		redo;
	}
	
	if (!($fibonacci[-2])) {
		push @fibonacci, 1;
		redo;
	}
	
	my $new_number = $fibonacci[-1] + $fibonacci[-2];
	last if $new_number > $limit;
	push @fibonacci, $new_number;
}

print "The fibonacci numbers that are less than or equal to ", $limit, " are:\n";
print join(', ', @fibonacci);