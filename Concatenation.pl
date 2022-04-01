#! usr/bin/perl -w
print "Program to concatenate two DNA sequences \n";
print "Please enter your first DNA sequence \n";
$seq1 = <STDIN>;
chomp ($seq1);
print "Please enter your second DNA sequence \n";
$seq2 = <STDIN>;
chomp ($seq2);
$concatseq = $seq1.$seq2;
print "The concatenated DNA sequences are: $concatseq \n";
exit;
