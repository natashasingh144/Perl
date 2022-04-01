#!usr/bin/perl -w
print "Program to search for a pattern \n";
print "Enter the filename of the protein sequence: \n";
$proteinfile = <STDIN>;
chomp ($proteinfile);
unless (open(PROTEIN,$proteinfile)) {
	print "Cannot open the file $proteinfile \n";
	exit;
}
@protein = <PROTEIN>;
$protein = join('',@protein);
$protein =~ s/\s//g;
print "Enter the motif sequence to be searched: \n";
$motif = <STDIN>;
chomp ($motif);
$motif=uc($motif);
$motif=0;
if ($protein =~ m/$motif/g) {
	print "The motif sequence was found in the motif sequence \n";
} else {
	print "Sequence not found \n";
}
while($protein =~ m/$motif/g) {
	$count++;
}
print "The number of occurences of the motif sequence is: $count \n";
print "The position of pattern in the sequence is: \n";
$i=1;
$length = length($motif);
while($protein =~ m/$motif/g) {
	$position = pos($protein);
	$start = $position - $length +1;
	print "$i.$start to $position \n";
	$i = $i++;
}
exit;
