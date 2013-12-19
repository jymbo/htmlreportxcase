 #******************************************************************************#
 # File: table.tcl                                                              #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file populates table.html with meta data from tables          #
 #           in an xcase diagram                                                #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#

#Get list of tables
set table_list [dict list_of_tables]

#Create list of table id's and table names 
set postlist {} 

#Get list of domains
set domain_list [dict list_of_domains]

#Populate list of table id's and table names                       
foreach table $table_list {
	set table_name  [$table attr NAME]
	lappend postlist [list "$table" "$table_name"] 
} 
#Sort the list by the table name
set sorted [lsort -ascii -index 1  $postlist] 

#Get final list of just table names
set finallist {}
	foreach var $sorted {
	lappend finallist [lindex $var 0] 	
}

 
#Truncate existing file(This global variable is set in HTMLReport.tcl)
close [open $::tablefull "w" ] 

#Open output file(This global variable is set in HTMLReport.tcl) 
set outfile [open $::tablefull "a" ] 
	 
#Source file for table procedures(This global variable is set in HTMLReport.tcl) 
source  $::tableincludefull
	
#Prints out the HTML for table.html
printtables $finallist $domain_list $outfile  

#Releases file handle on success
close $outfile  
 

 
 
