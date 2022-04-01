#!/usr/bin/perl -w
print "A program to print a series of numbers in descending order\n";
print "Enter the maximum number \n";
$max = <STDIN>;
chomp ($max);
print "Enter the minimum number \n";
$min = <STDIN>;
chomp ($min);
if ($max < $min) {
	print "The first number should be greater than the second number \n";
} else {
	print "The numbers between the inputs are: \n";
	my $max1 = $max-1;
	my $min1 = $min+1;
	while ($max1>=$min1) {
		print $max1;
		$max1--;
		print "\n";
	}
}
exit;