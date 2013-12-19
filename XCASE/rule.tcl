 #******************************************************************************#
 # File: rule.tcl                                                               #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file populates rule.html with meta data from rules            #
 #           in an xcase diagram                                                #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#
 
#List of rules
set rule_list [dict list_of_rules]

#Create list of rule id's and rule names
set postlist {} 
                       
#Populate list of rule id's and rule names                       
foreach rule $rule_list {
	set rule_name  [$rule attr NAME]
	lappend postlist [list "$rule" "$rule_name"] 
} 
#Sort the list by the rule name
set sorted [lsort -ascii -index 1  $postlist]

#Get final list of just rule name
set finallist {}
foreach var $sorted {
	lappend finallist [lindex $var 0] 	

}

#Truncate existing file(This global variable is set in HTMLReport.tcl)
close [open $::rulefull "w" ]

#Set output file(This global variable is set in HTMLReport.tcl) 
set outfile [open $::rulefull "a" ] 

#Source file for rules(This global variable is set in HTMLReport.tcl) 
source  $::ruleincludefull

#Prints out the HTML for rule.html
printrules $finallist $outfile   

#Release file handle
close $outfile   


 

 


 
