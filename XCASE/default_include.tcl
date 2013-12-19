 #******************************************************************************#
 # File: default_include.tcl                                                    #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file contains procedures used by default.tcl                  #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#

#Prints out defaults
proc printdefaults { finallist outfile } {
	puts $outfile "<html>"
	puts $outfile "<head>" 
	puts $outfile "<link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">"
	puts $outfile "</head>"
#Prints out default rows
		foreach default $finallist {
			puts $outfile "<table border=\"1\">" 
			puts $outfile "<tr>"   
			puts $outfile "<th colspan=\"2\" id=[$default attr NAME]><div id=table-bar><strong>[$default attr NAME]</strong></div></th>"  
			puts $outfile "</tr>" 
			puts $outfile "<tr>"
			puts $outfile "<th>Owner</th><td>[$default attr OWNER]</td>"
			puts $outfile "</tr>"
			puts $outfile "<tr>"  
			puts $outfile "<th colspan=\"2\">Comments</th>"
			puts $outfile "</tr>"
			puts $outfile "<tr>"  
			puts $outfile "<td colspan=\"2\">[$default attr COMMENTS]</td>" 
			puts $outfile "</tr>"  
			puts $outfile "<tr>"
			puts $outfile "<th colspan=\"2\">Code</th>"
			puts $outfile "</tr>"
			puts $outfile "<tr>"  
			puts $outfile "<td  colspan=\"2\">[$default attr CODE]</td>" 
			puts $outfile "</tr>"  
			puts $outfile "</table>"  
			puts $outfile "&nbsp;"
        } 
 
	puts $outfile "</html>" 
} 
