#!/usr/bin/perl

use strict;

# assign input string to test multiple valid and invalid strings
my $input = "123456789123\n12345678912345\n123456x89123\n123456789\n";

# Step 1: split the input string into individual array elements
my @AoCodes = split("\n", $input);
my @AoValidCodes;
my $cnt_input_codes = ++$#AoCodes;
print "Count of input codes:\t$cnt_input_codes\n";


# Step 2: validate each input element and push to array of valid codes
foreach my $bc_validate ( @AoCodes ) {
	chomp($bc_validate); 
	print "\$bc_validate=$bc_validate\n";
	# Step 2a: disregard elements not equal to either 12 or 14 numeric characters
	my $ls=length($bc_validate);
	if ( ($ls != 12) and ($ls != 14) ) { 
		print "skipping:\t\"$bc_validate\" has invalid length\n";
		next;
	}

	# check if element is non-numeric and if so then skip
	if ( $bc_validate =~ m/[^0-9.]/ ) { 
		print "skipping:\t\"$bc_validate\" contains non numeric characters\n";
		next;
	}
	# Step 2b: push valid elements
	push(@AoValidCodes,$bc_validate);
}

# Step 3: print out array of valid codes
print "\n\nThe following input codes are valid:\n";
print "$_\n" foreach @AoValidCodes;


