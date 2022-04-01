#! usr/bin/perl -w
print "Welcome to MSLS \n";
print "Please enter the student's name \n";
$name = <STDIN>;
chomp ($name);
print "Please enter the password \n";
$pass = <STDIN>;
chomp ($pass);
if ($name eq "Natasha" && "mahe123") {
	print "Hello $name, you have logged in successfully!! \n";
} else {
	print "Please enter the valid details \n";
}
exit;
