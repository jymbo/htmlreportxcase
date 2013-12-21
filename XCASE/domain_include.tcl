 #******************************************************************************#
 # File: domain_include.tcl                                                     #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file contains procedures used by domain.tcl                   #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#


#Prints out table name and field name dependents of the domain
proc printdomainfielddependents { item_list domain outfile } {  

	if { [lindex $item_list 0] == $domain } {
		 puts $outfile "<tr>"  
		 puts -nonewline $outfile "<td><a href=\"$::tablehtml"
	     puts -nonewline $outfile "#[lindex $item_list 1]\">[lindex $item_list 1]</a></td>"
	     puts $outfile "<td>[lindex $item_list 2]</td>"  
		 puts $outfile "</tr>"	
	} 

}    


#Prints out domains
proc printdomains { finallist domain_field_list outfile } {
	puts $outfile "<html>"
	puts $outfile "<head>" 
	puts $outfile "<link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">"
	puts $outfile "</head>"
#Loop through sorted list 
	foreach domain $finallist {
		puts $outfile "<table border=\"1\">" 
		puts $outfile "<tr>"   
		puts $outfile "<th colspan=\"6\" id=[$domain attr D_NAME]><div id=table-bar><strong>[$domain attr D_NAME]</strong></div></th>"
		puts $outfile "</tr>" 
		puts $outfile "<tr>"
		puts $outfile "<th  colspan=\"1\">Owner</th>"
        puts $outfile "<td colspan=\"5\">[$domain attr OWNER]</td>"  
		puts $outfile "</tr>"
		puts $outfile "<tr>"
		puts $outfile "<th>Type</th>"
		puts $outfile "<th>Length</th>"
	    puts $outfile "<th>Decimal</th>"
	    puts $outfile "<th>Default Name</th>"
	    puts $outfile "<th>Default Value</th>"
	    puts $outfile "<th>Rule</th>"  
		puts $outfile "</tr>" 
		puts $outfile "<tr>"
		puts $outfile "<td>[$domain attr TYPE]</td>"
		puts $outfile "<td>[$domain attr LEN]</td>"
		puts $outfile "<td>[$domain attr DEC]</td>"
	    puts $outfile "<td>" 
#Prints out default name if exists
		if { [$domain default] != "" } { 
	    puts $outfile "<a href=\"$::defaulthtml"
		puts $outfile "#[[$domain default] attr NAME]\">[[$domain default] attr NAME]</a></td>" 
		puts $outfile "<td>[[$domain default] attr CODE]</td>" 
	 	} else { 
	        puts $outfile "</td><td>"
			puts $outfile [$domain attr E_DEFAULT] 
			puts $outfile "</td>"
			} 
#Prints out rule name if exists
	    puts $outfile "<td>" 
		if {[$domain attr I_RULE] !=0} {
			puts $outfile [chk[$domain attr I_RULE] attr NAME]  
		}
		puts $outfile "</td>"  
		puts $outfile "</tr>"  
		puts $outfile "<tr>"
		puts $outfile "<th colspan=\"6\">Comments</th>"
		puts $outfile "</tr>"
		puts $outfile "<tr>"  
		puts $outfile "<td colspan=\"6\">[$domain attr COMMENTS]</td>" 
		puts $outfile "</tr>" 
#End of domain table
		puts $outfile "</table>" 
#Start table for table dependencies
		puts $outfile "<table border=\"1\">" 
		puts $outfile "<tr>"   
		puts $outfile "<th colspan=\"2\"><div id=title-bar><strong>Table Dependencies</strong></div></th>"
		puts $outfile "</tr>" 
    	puts $outfile "<tr>"   
		puts $outfile "<th><strong>Table</strong></th>"
		puts $outfile "<th><strong>Field</strong></th>"
		puts $outfile "</tr>" 
		foreach item $domain_field_list { 
#Prints out domain dependents
       		 printdomainfielddependents $item $domain $outfile  
			}   
#End of domain table dependencies table
		puts $outfile "</table>"
		puts $outfile "&nbsp;"
	 }

	puts $outfile "</html>"  
}  