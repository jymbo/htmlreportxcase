 #******************************************************************************#
 # File: procedure.tcl                                                          #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file populates procedure.html with meta data from procedures  #
 #           in an xcase diagram                                                #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#

#Procedure list
set procedure_list [dict list_of_procedures]  

#Create list of procedure id's and procedure names   
set postlist {} 
                       
#Populate list of procedure id's and procedure names                       
foreach procedure $procedure_list {
	set procedure_name  [$procedure attr NAME]
 	if { [$procedure attr TYPE] =="Procedure"} {
		lappend postlist [list "$procedure" "$procedure_name"]     
		}
} 

#Sort the list by the procedure name
set sorted [lsort -ascii -index 1  $postlist]

#Get final list of just procedure name
set finallist {}
	foreach var $sorted {
		lappend finallist [lindex $var 0] 	
}

#Truncate existing file(This global variable is set in HTMLReport.tcl)
close [open $::procedurefull "w" ]

#Set output file(This global variable is set in HTMLReport.tcl) 
set outfile [open $::procedurefull "a" ] 

#Source file for procedures(This global variable is set in HTMLReport.tcl) 
source  $::procedureincludefull

#Prints out the HTML for procedure.html
printprocedures $finallist $outfile   

#Release file handle
close $outfile   


 

 


 
