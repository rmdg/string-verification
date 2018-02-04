#!/usr/bin/perl

use strict;

# assign input string to test multiple valid and invalid strings
my $input = "123456789123\n12345678912345\n123456x89123\n123456789\n";

my @AoCodes = split("\n", $input);
print ++$#AoCodes;

foreach $bc_validate ( @AoCodes ) {
	# Step 1: disregard elements not equal to either 12 or 14 numeric characters
	# Step 2: push valid elements to return array
}
