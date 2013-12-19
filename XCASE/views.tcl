 #******************************************************************************#
 # File: view.tcl                                                               #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file populates view.html with meta data from views            #
 #           in an xcase diagram                                                #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#

#List of views
set view_list [dict list_of_views]

#Create list of view id's and view names 
set postlist {} 
                       
#Populate list of view id's and view names                       
foreach view $view_list {
	set view_name  [$view attr V_NAME]
	lappend postlist [list "$view" "$view_name"] 
} 

#Sort the list by the view name
set sorted [lsort -ascii -index 1  $postlist]

#Get final list of just entity name
set finallist {}
	foreach var $sorted {
	lappend finallist [lindex $var 0] 	

}

#Truncate existing file(This global variable is set in HTMLReport.tcl)
close [open $::viewfull "w" ]

#Set output file(This global variable is set in HTMLReport.tcl) 
set outfile [open $::viewfull "a" ] 

#Source file for view (This global variable is set in HTMLReport.tcl) 
source  $::viewincludefull

#Prints out the HTML for view.html
printviews $finallist $outfile   

#Release file handle
close $outfile  

 

 


 
