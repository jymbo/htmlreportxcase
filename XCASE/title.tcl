 #******************************************************************************#
 # File: title.tcl                                                              #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file populates title.htm with meta data from the model        #
 #           in an xcase diagram                                                #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#

#Get dictionary of model
set model [dict get_model]  

#Truncate existing file(This global variable is set in HTMLReport.tcl)
close [open $::titlefull "w" ] 

#Open output file(This global variable is set in HTMLReport.tcl) 
set outfile [open $::titlefull "a" ] 
	 
#Source file for table procedures(This global variable is set in HTMLReport.tcl) 
source  $::titleincludefull
	
#Prints out the HTML for title.htm
printtitle $model $outfile

#Release file handle
close $outfile