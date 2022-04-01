#! usr/bin/perl -w
print "Program to transcribe and reverse complement the DNA sequence \n";
print "Please enter the DNA sequence \n";
$DNA = <STDIN>;
chomp ($DNA);
print "The entered DNA sequence is: $DNA \n";
$DNA = uc($DNA);
$DNA =~ s/T/U/g;
print "The transcribed mRNA sequence is: $DNA \n";
$rev = reverse($DNA);
$rev =~ tr/AGTCagtc/TCAGtcag/;
print "The reverse complement of the DNA sequence is: $rev \n";
exit;