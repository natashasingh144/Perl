#! usr/bin/perl -w 
#area of a circle = $pi*$rad**$rad**
# $pi=3.14;
print "Please enter the radius of the circle: \n";
$rad=<STDIN>;
chomp($rad);
$area = area1($rad);
# $area=$pi*$rad**2;
print "The area of the circle is: $area square cm \n";
sub area1 {
$pi=3.14;
# $rad=<STDIN>;
# chomp($rad);
$area=$pi*$rad**2;
return area1;
}
exit;


