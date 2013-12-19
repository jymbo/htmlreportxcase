 #******************************************************************************#
 # File: title_include.tcl                                                      #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file contains procedures used by title.tcl                    #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#


#Prints out model attributes
proc printtitle { model outfile } {
	puts $outfile "<!DOCTYPE HTML>"
	puts $outfile "<HEAD>" 
	puts $outfile "<LINK rel='stylesheet' type='text/css' href='title.css'>"   
	puts $outfile "</HEAD>" 
	puts $outfile "<TABLE class=\"box\" BORDER=\"1\">"
	puts $outfile "<TR>"
	puts $outfile "<TD>"
	foreach mod $model {
		
		puts $outfile "<strong>Model</strong>:[$model attr MODEL_NAME]" 
		puts $outfile "<BR/><BR/>"
		
		puts $outfile "<strong>Database</strong>:[$model attr DBMS]" 
		puts $outfile "<BR/><BR/>"
		
		puts $outfile "<strong>Owner</strong>:[$model attr OWNER]" 
		puts $outfile "<BR/><BR/>"
		
		puts $outfile "<strong>Version</strong>:[$model attr VERSION]" 
		puts $outfile "<BR/><BR/>"
		
		puts $outfile "<strong>Comments</strong>:[$model attr NOTES]" 
		puts $outfile "<BR/><BR/>"
		
		puts $outfile "<strong>Updated</strong>:"  
		puts $outfile [clock format [clock seconds]]

	}
	puts $outfile "</TD>"    
	puts $outfile "</TR>"  
	puts $outfile "</TABLE>"
	puts $outfile "</HTML>" 
}
