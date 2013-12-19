 #******************************************************************************#
 # File: function_include.tcl                                                   #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file contains procedures used by function.tcl                 #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#


#Print out HTML from based on attributes of the functions in the sorted list  
proc printfunctions { finallist outfile } { 
	puts $outfile "<html>"
	puts $outfile "<head>" 
	puts $outfile "<link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">"
	puts $outfile "</head>"
#Prints out function rows
    foreach function $finallist {
		puts $outfile "<table border=\"1\">" 
		puts $outfile "<tr>"   
		puts $outfile "<th colspan=\"7\" id=[$function attr NAME]><div id=\"table-bar\"><strong>[$function attr NAME]</strong></div></th>"  
		puts $outfile "</tr>"
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"1\">Owner</th>"
        puts $outfile "<td colspan=\"6\">[$function attr OWNER]</td>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"
		puts $outfile "<th  colspan=\"7\">Description</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td colspan=\"7\" >[$function attr DESCRIPT]</td>" 
		puts $outfile "</tr>"  
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"7\">Comments</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td colspan=\"7\">[$function attr COMMENTS]</td>" 
		puts $outfile "</tr>"  
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"7\">Code</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td colspan=\"7\">[$function attr CODE]</td>" 
		puts $outfile "</tr>"  
		puts $outfile "</table>"  
		puts $outfile "&nbsp;"

        } 
 
	puts $outfile "</html>"

 } 
  
