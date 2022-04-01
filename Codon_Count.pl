#! usr/bin/perl -w 
print "Program to print the number of start and stop codons \n";
print "Enter the DNA sequence: \n";
$dna = <STDIN>;
chomp ($dna);
$dna = uc($dna);
$length = length($dna);
$startcod = 0;
while($dna=~m/ATG/g) {
	$startcod++;
	}
$stopcod = 0;
while($dna=~m/TAG|TGA|TAA/g) {
	$stopcod++;
	}
print "The number of start codon is: $startcod \n";
print "The number of stop codon is: $stopcod \n";
exit; 