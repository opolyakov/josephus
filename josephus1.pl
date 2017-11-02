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

for(my $i=0, my $j=1, my $l=@arr;;++$i,++$j) {
	if ($i==$#arr+1) {
		$i=0;
	}
	while($arr[$i]==0) {
		++$i;
		if ($i==$#arr+1) {
			$i=0;
		}
	}
	if ($j==$k) {
		$arr[$i]=0;
		$j=0;
		--$l;
	if ($l==1) { last; }
	}
}
foreach (@arr) { print $_."\n" unless $_==0; }
