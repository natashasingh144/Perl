#! usr/bin/perl -w
#$mass = (($molw*$vol*$mol)/1000)
print "Program to calculate the mass of solute to be dissolved in a solvent for a given molarity \n";
print "Please enter the molecular weight of the compound \n";
$molw = <STDIN>;
chomp ($molw);
print "Please enter the molarity of the solution needed in M \n";
$mol = <STDIN>;
chomp ($mol);
print "Please enter the volume of the solution needed in mL \n";
$vol = <STDIN>;
chomp ($vol);
$mass = (($molw*$vol*$mol)/1000);
print "Dissolve $mass grams of the solute in $vol mL of the solvent \n";
exit;

