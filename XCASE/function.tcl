 #******************************************************************************#
 # File: function.tcl                                                           #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file populates function.html with meta data from user         #
 #           defined functions in an xcase diagram                              #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#


#Function list
set function_list [dict list_of_procedures]

#Create list of function id's and function names 
set postlist {} 
                       
#Populate list of function id's and function names                       
foreach function $function_list {
	set function_name  [$function attr NAME]
	 if { [$function attr TYPE] =="Function"} {
          lappend postlist [list "$function" "$function_name"]     
    }
}
 
#Sort the list by the function name
set sorted [lsort -ascii -index 1  $postlist]

#Get final list of just function name
set finallist {}
foreach var $sorted {
	lappend finallist [lindex $var 0] 	
}

#Truncate existing file(This global variable is set in HTMLReport.tcl)
close [open $::functionfull "w" ]

#Set output file(This global variable is set in HTMLReport.tcl) 
set outfile [open $::functionfull "a" ] 

#Source file for function (This global variable is set in HTMLReport.tcl) 
source  $::functionincludefull

#Prints out the HTML for function.html
printfunctions $finallist $outfile   

#Release file handle
close $outfile   
 

 


 
