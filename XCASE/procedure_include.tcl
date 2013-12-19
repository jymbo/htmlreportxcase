 #******************************************************************************#
 # File: procedure_include.tcl                                                  #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file contains procedures used by procedure.tcl                #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#


#Print out HTML from based on attributes of the procedures in the sorted list  
proc printprocedures {finallist outfile } { 

	puts $outfile "<html>"
	puts $outfile "<head>" 
	puts $outfile "<link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">"
	puts $outfile "</head>"
#Prints out procedure rows
        foreach procedure $finallist {
		puts $outfile "<table border=\"1\">" 
		puts $outfile "<tr>"   
		puts $outfile "<th colspan=\"7\" id=[$procedure attr NAME]><div id=\"table-bar\"><strong>[$procedure attr NAME]</strong></div></th>"  
		puts $outfile "</tr>"
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"1\">Owner</th>"
		puts $outfile "<td colspan=\"6\">[$procedure attr OWNER]</td>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"7\">Description</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td colspan=\"7\">[$procedure attr DESCRIPT]</td>" 
		puts $outfile "</tr>"  
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"7\">Comments</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td colspan=\"7\">[$procedure attr COMMENTS]</td>" 
		puts $outfile "</tr>"  
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"7\">Code</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td  colspan=\"7\">[$procedure attr CODE]</td>" 
		puts $outfile "</tr>"  
		puts $outfile "</table>"  
		puts $outfile "&nbsp;"

        } 
 
	puts $outfile "</html>"
  } 
