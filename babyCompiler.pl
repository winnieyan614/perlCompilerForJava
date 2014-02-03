#!/usr/bin/perl -w

#open the input java file
print "##################### Open Input File #######################\n";
open (INFILE,"<testStatements.java") or die("$!, stopped");
@program = <INFILE>; 
close (INFILE);

######just prints out the test input to assure programmer
foreach $line (@program){
	print $line . "\n";
} 

#########################################################################
print "############################# Join ##############################";

$myprogram = join('',@program);
print "\n" . $myprogram; 

######################################################################
print "################ Replace all reservor words with R ###################";
$myprogram =~ s/int|String|char+/R/g;
print "\n" . $myprogram;

###################################################################
print "################ Get rid of whitespace ###################";
$myprogram =~ s/ +/ /g;	
print "\n" . $myprogram; 

########################alternative##############################################
print "################ Get rid of whitespace ###################";
$myprogram =~ s/\s//g;	
print "\n" . $myprogram; 

######################################################################
print "################ Replace all numbers with N ###################";
$myprogram =~ s/[0-9][.0-9]*+/N/g;	
print "\n" . $myprogram; 

######################################################################
print "################ Replace all identifiers with I ###################";
$myprogram =~ s/[a-z][a-zA-Z0-9_]*+/I/g;
print "\n" . $myprogram;

######################################################################
print "################ Replace all statements with S ###################";
$myprogram =~ s/RI=[NI\+]*[NI\-]*[NI\*]*[NI\/]*;|I=[NI\+]*[NI\-]*[NI\*]*[NI\/]*;+/S/g;
print "\n" . $myprogram;


