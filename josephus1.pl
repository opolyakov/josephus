#!/usr/bin/perl
use strict;
use warnings;

use Getopt::Long qw(GetOptions);

my ($n,$k);

GetOptions(
    'n=i' => \$n,
    'k=i' => \$k,
) or die "Usage: $0 -n NUMBER -k NUMBER\n";

if ($n<=0 or $k<=0) { die "Arguments should be positive integers\n"; }

# Create zeroed array
my @arr = (0) x $n;

for(my $i=0, my $j=1, my $count=$n; $count>1 ; ++$i,++$j) {
	# At the end of array - go to beginning
	if ($i==$n) {
		$i=0;
	}
	# If element is tagged, step over
	while($arr[$i]==1) {
		++$i;
		# At the end of array
		if ($i==$n) {
			$i=0;
		}
	}
	# Tag POI with 1, restart j, decrement $count
	if ($j==$k) {
		$arr[$i]=1;
		$j=0;
		--$count;
	}
}
# Find untagged array element
my $i=0;
foreach (@arr) {
	++$i;
	print $i."\n" unless $_==1;
}
