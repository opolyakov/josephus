#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long qw(GetOptions);

my (@arr);
my ($n,$k);

GetOptions(
    'n=i' => \$n,
    'k=i' => \$k,
) or die "Usage: $0 -n NUMBER -k NUMBER\n";

if ($n<=0 or $k<=0) { die "Arguments should be positive integers\n"; }

# Create array
for(my $i=1;$i<=$n;++$i) {
	push @arr,$i;
}
# Processing
for(my $count=0, my $j=1;@arr>1;++$count,++$j) {
	# At the end of array - go to beginning
	if ($count==$#arr+1) {
		$count=0;
	}
	# Remove POI, restart j, decrement count
	if ($j==$k) {
		splice(@arr,$count,1);
		$j=0;
		--$count;
	}
}
print "$arr[0]\n"; 
