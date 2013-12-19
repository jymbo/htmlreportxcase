 #******************************************************************************#
 # File: default.tcl                                                            #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file populates default.html with meta data from defaults      #
 #           in an xcase diagram                                                #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#

#Default list
set default_list [dict list_of_defaults]

#Create list for default id's and default names  
set postlist {} 
                       
#Populate list of default id's and default names                       
foreach default $default_list {
	set default_name  [$default attr NAME]
	lappend postlist [list "$default" "$default_name"] 

} 
#Sort the list by the default name
set sorted [lsort -ascii -index 1  $postlist]

#Get final list of just default name
set finallist {}
	foreach var $sorted {
	lappend finallist [lindex $var 0] 	
}

#Truncate existing file
close [open $::defaultfull "w" ]

#Set output file 
set outfile [open $::defaultfull "a" ] 
 
#Source file for default procedures(This global variable is set in HTMLReport.tcl) 
source  $::defaultincludefull

#Prints out the HTML for default.html
printdefaults $finallist $outfile 


#Releases file handle
close $outfile   

  

 


 
