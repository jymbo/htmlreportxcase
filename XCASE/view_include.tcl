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

	puts $outfile "<html>"
	puts $outfile "<head>" 
	puts $outfile "<link rel='stylesheet' type='text/css' href='theme.css'>"
	puts $outfile "</head>"
#Prints view rows
	foreach view $finallist {
		set field_list [$view list_of_fields] 
		puts $outfile "<table border=\"1\" >" 
		puts $outfile "<tr>"   
		puts $outfile "<th colspan=\"2\" id=[$view attr V_NAME]><div id=table-bar><strong>[$view attr V_NAME]</strong></div></th>"  
		puts $outfile "</tr>" 
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"2\">"
		puts $outfile "Description"
		puts $outfile "</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr >"  
		puts $outfile "<td colspan=\"2\" >"
		puts $outfile "[$view attr DESCRIPT]"
		puts $outfile "</td>" 
		puts $outfile "</tr>"  
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"2\">"
		puts $outfile "SQL"
		puts $outfile "</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td  colspan=\"2\">"
		puts $outfile "[$view attr SQL]"
		puts $outfile "</td>" 
		puts $outfile "</tr>"  
		puts $outfile "<tr>"
		puts $outfile "<th><strong>Field Name</strong></th>"
		puts $outfile "<th><strong>Expression</strong></th>"
		puts $outfile "</tr>"
#Prints fields in a view		
		foreach field $field_list {   
			puts $outfile "<tr>"
			puts $outfile "<td>"
			puts $outfile "[$field attr NAME]"
			puts $outfile "</td>" 
			puts $outfile "<td>"
			puts $outfile "[$field attr EXPR]"
			puts $outfile "</td>"
			puts $outfile "</tr>"
		}

	puts $outfile "</table>"  
	puts $outfile "&nbsp;"

	} 
 
	puts $outfile "</html>"

 } 
