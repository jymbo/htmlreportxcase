 #******************************************************************************#
 # File: view_include.tcl                                                       #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file contains views used by view.tcl                          #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#


#Print out HTML from based on attributes of the views in the sorted list  
proc printviews { finallist outfile } { 

	puts $outfile "<HTML>"
	puts $outfile "<HEAD>" 
	puts $outfile "<LINK rel='stylesheet' type='text/css' href='theme.css'>"
	puts $outfile "</HEAD>"
#Prints view rows
	foreach view $finallist {
		set field_list [$view list_of_fields] 
		puts $outfile "<TABLE border=\"1\" >" 
		puts $outfile "<TR>"   
		puts $outfile "<TH colspan=\"2\" id=[$view attr V_NAME]><div id=table-bar><strong>[$view attr V_NAME]</strong></div></TH>"  
		puts $outfile "</TR>" 
		puts $outfile "<TR>"
		puts $outfile "<TH colspan=\"2\">"
		puts $outfile "Description"
		puts $outfile "</TH>"
		puts $outfile "</TR>"
		puts $outfile "<TR >"  
		puts $outfile "<TD colspan=\"2\" >"
		puts $outfile "[$view attr DESCRIPT]"
		puts $outfile "</TD>" 
		puts $outfile "</TR>"  
		puts $outfile "<TR>"
		puts $outfile "<TH colspan=\"2\">"
		puts $outfile "SQL"
		puts $outfile "</TH>"
		puts $outfile "</TR>"
		puts $outfile "<TR>"  
		puts $outfile "<TD  colspan=\"2\">"
		puts $outfile "[$view attr SQL]"
		puts $outfile "</TD>" 
		puts $outfile "</TR>"  
		puts $outfile "<TR>"
		puts $outfile "<TH><strong>Field Name</strong></TH>"
		puts $outfile "<TH><strong>Expression</strong></TH>"
		puts $outfile "</TR>"
#Prints fields in a view		
		foreach field $field_list {   
			puts $outfile "<TR>"
			puts $outfile "<TD>"
			puts $outfile "[$field attr NAME]"
			puts $outfile "</TD>" 
			puts $outfile "<TD>"
			puts $outfile "[$field attr EXPR]"
			puts $outfile "</TD>"
			puts $outfile "</TR>"
		}

	puts $outfile "</TABLE>"  
	puts $outfile "&nbsp;"

	} 
 
	puts $outfile "</HTML>"

 } 
