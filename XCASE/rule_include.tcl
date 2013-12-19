 #******************************************************************************#
 # File: rule_include.tcl                                                       #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file contains procedures used by rule.tcl                     #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#



#Print out HTML from based on attributes of the rules in the sorted list  
proc printrules {finallist outfile } { 

	puts $outfile "<html>"
	puts $outfile "<head>" 
	puts $outfile "<link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">"
	puts $outfile "</head>"
#Prints out rule rows
    foreach rule $finallist {
		puts $outfile "<table border=\"1\">" 
		puts $outfile "<tr width=\"100%\">"   
		puts $outfile "<th colspan=\"2\" id=[$rule attr NAME]><div id=table-bar><strong>[$rule attr NAME]</strong></div></th>"  
		puts $outfile "</tr>" 
		puts $outfile "<tr>"
		puts $outfile "<th>Owner</th><td>[$rule attr OWNER]</td>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<th colspan=\"2\">Comments</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td colspan=\"2\">[$rule attr COMMENTS]</td>" 
		puts $outfile "</tr>"  
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"2\">Code</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td colspan=\"2\">[$rule attr CODE]</td>" 
		puts $outfile "</tr>"  
		puts $outfile "</table>"  
		puts $outfile "&nbsp;"

        } 
 
	puts $outfile "</html>"

  } 