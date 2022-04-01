#! usr/bin/perl -w
print "Program to calculate the melting temperature of the primer sequence \n";
print "Please enter the primer sequence \n";
$dna = <STDIN>;
chomp ($dna);
$dna = uc($dna);
$length = length($dna);
#counting the base pair
$a = 0; $t = 0; $g = 0; $c = 0;
$a = ($dna =~tr/Aa//);
$t = ($dna =~tr/Tt//);
$g = ($dna =~tr/Gg//);
$c = ($dna =~tr/Cc//);
$basecount = ($dna =~ tr/ATGCatgc//);
$nonbase = (($length) - $basecount);
print "Total length of the given DNA sequence: $length \n";
print "Total number of A nucleotide is: $a \n";
print "Total number of T nucleotide is: $t \n";
print "Total number of G nucleotide is: $g \n";
print "Total number of C nucleotide is: $c \n";
print "Total number of unknown bases: $nonbase \n";
#tm calculation
if ($length < 14) {
	my $tm1 = (($a+$t)*2 + ($g+$c)*4);
	print "The melting temperature of the given sequence: ";
	printf("%.2f",$tm1);
	print " degree celsius \n";
} else {
	my $tm2 = (64.9 + 41*(($g+$c)-16.4)/$basecount);
	print "The melting temperature of the given sequence: ";
	printf("%.2f",$tm2);
	print " degree celsius \n";
}
exit;
	
	