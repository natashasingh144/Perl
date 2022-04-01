#!usr/bin/perl -w
#array manipulation
print"A program to demostrate the manipulation of array";
@on=(1,2,3,4);
print"The given values are: @on\n";
#push function
push(@on,'5','6');
print @on;
print "\n";
#pop function
pop(@on);
print @on;
print "\n";
#shift function
shift(@on);
print @on;
print "\n";
#unshift function
unshift (@on,'7','8','9');
print @on;
print "\n";
#sort function
@one = sort{$b<=>$a}(@on);
print @one;
print "\n";
exit;
