# !/usr/bin/perl -w
print "A program to print a series between two numbers in ascending order\n";
print "Enter the minimum number \n";
$min = <STDIN>;
chomp ($min);
print "Enter the maximum number \n";
$max = <STDIN>;
chomp ($max);
print "The numbers between $min and $max are: \n";
for ($min = $min+1;$min<$max;$min++) 
{
	print $min;
	print "\n";
}
exit;
	