 #******************************************************************************#
 # File: table_include.tcl                                                      #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file contains procedures used by table.tcl                    #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#


#Returns Incoming Relationship Type
proc printrelationtype { typ } {
	switch $typ {
		"1" {
			set result "Non Identifying"
		}
		 "2" {
			set result "Identifying"
		}
		 "3" {
			set result "Subcategory"
		}
		default {
			set result "not working"
		} 
	}
	return $result
}

#Returns cardinality descriptions
proc printcardinality { card } {
	switch $card {
	 	"1" {
			set result "1-1"
		}
	 	"2" {
			set result "1-0,1"
		}
	 	"3" {
			set result "1-n"
		}
	 	"4" {
			set result "1-0,n"
	  	} 
	 	default {
			set result "not working"
	} 
	           }
	return $result
}

#Determine Index type
proc printindextype { index } {  

	if {$index == "U"} {
		set result "Unique"
	}
	if {$index == "R"} {
		set result "Regular"
	}
	return $result
}

#Print out indexes  
proc printindexes  { index_list outfile } {   
#Print out index headers
	puts $outfile " <table border=\"1\">"   
	puts $outfile "<tr>"
	puts $outfile "<th colspan=6><div id=\"title-bar\"><strong>Indexes</strong></div></th>"
	puts $outfile "</tr>"
	puts $outfile "<tr>"
	puts $outfile "<th><strong>Name</strong></th>"
    puts $outfile "<th><strong>Key</strong></th>"
    puts $outfile "<th><strong>Included Columns</strong></th>"
    puts $outfile "<th><strong>Primary Key Index</strong></th>"
    puts $outfile "<th><strong>Type</strong></th>"
    puts $outfile "<th><strong>Clustered</strong></th>" 
	puts $outfile "</tr>" 
#Prints out index rows
	foreach index $index_list {
	    puts $outfile "<tr>" 
		puts $outfile "<td>[$index attr NAME]</td>"
		puts $outfile "<td>[$index attr INDEX_KEY]</td>"   
		puts $outfile "<td>[$index attr INCLUDED]</td>" 
		puts $outfile "<td>[$index attr P_INDEX]</td>"   
		puts $outfile "<td>"
		puts -nonewline $outfile [printindextype [$index attr TYPE]]
		puts $outfile "</td>" 
		puts $outfile "<td>[$index attr CLUSTER]</td>" 
		puts $outfile "</tr>" 
	} 
#End index table
	puts $outfile "</table>"
} 

#Print out fields
proc printfields { field_list  domain_list outfile } { 
#Print field headers
	puts $outfile "<tr>" 
	puts $outfile "<th><strong>Field Name</strong></th>"
	puts $outfile "<th><strong>PK</strong></th>"
	puts $outfile "<th>Domain</th>"
	puts $outfile "<th>Type</th>"
	puts $outfile "<th><strong>Length</strong></th>"
	puts $outfile "<th><strong>Dec</strong></th>"
	puts $outfile "<th><strong>Allow Null</strong></th>"
    puts $outfile "<th>Default Name</th>"
    puts $outfile "<th>Default Value</th>"
	puts $outfile "<th><strong>Rule</strong></th>"
	puts $outfile "<th><strong>Description</strong></th>"   
	puts $outfile "<th><strong>Comments</strong></th>" 
	puts $outfile "</tr>"
#Print out field rows
	foreach field $field_list {   
		puts $outfile "<tr>"
		puts $outfile "<td>[$field attr NAME]</td>" 
		puts $outfile "<td>[$field attr P_KEY]</td>" 
		puts $outfile "<td>"
#Print domain name if it exists in domain list
		if { [lsearch -exact $domain_list "dom[$field attr I_DOMAIN]"] >= 0 } {
			puts -nonewline $outfile "<a href=\"$::domainhtml"
			puts -nonewline $outfile "#"
			puts -nonewline $outfile "[dom[$field attr I_DOMAIN] attr D_NAME]\">"
			puts $outfile "[dom[$field attr I_DOMAIN] attr D_NAME]</a>" 
		}

		puts $outfile "</td>"  
		puts $outfile "<td>[$field attr TYPE]</td>"
		puts $outfile "<td>[$field attr LEN]</td>"
		puts $outfile "<td>[$field attr DEC]</td>" 
		puts $outfile "<td>[$field attr NULL]</td>" 
		puts $outfile "<td>"
#Prints out default name if exists
		if { [$field default] != ""} { 
    		puts $outfile "<a href=\"$::defaulthtml"
			puts -nonewline $outfile "#"
			puts -nonewline $outfile "[[$field default] attr NAME]\">"
			puts $outfile "[[$field default] attr NAME]</a></td>" 
			puts $outfile "<td>[[$field default] attr CODE]</td>" 
 		} else { 
       			puts $outfile "</td><td>"
				puts $outfile [$field attr E_DEFAULT] 
				puts $outfile "</td>"
		} 
		puts $outfile "<td>"
#Print out rule if one exists
		if {[$field attr I_RULE] !=0} {
			puts -nonewline $outfile "<a href=\"$::rulehtml"
			puts -nonewline $outfile "#"
			puts -nonewline $outfile "[chk[$field attr I_RULE] attr NAME]\">"
			puts $outfile "[chk[$field attr I_RULE] attr NAME]</a>"
		}  

		puts $outfile "</td>"  
		puts $outfile "<td>[$field attr DESCRIPT]</td>"  
        puts $outfile "<td>[$field attr COMMENTS]</td>"
		puts $outfile " </tr>"
	}
#End table/field table  
	puts $outfile " </table>"
}

#Print out constraints
proc printconstraints {cons_list outfile } {
	puts $outfile " <table border=\"1\">" 
	puts $outfile "<tr>"
	puts $outfile "<th colspan=7><div id=\"title-bar\"><strong>Constraints</strong></div></th>"
	puts $outfile "</tr>"
	puts $outfile "<tr>"
	puts $outfile "<th><strong>Name</strong></th>"
	puts $outfile "<th><strong>Title</strong></th>"
	puts $outfile "<th><strong>Field Name</strong></th>"
	puts $outfile "<th><strong>Is Checked</strong></th>"
	puts $outfile "<th><strong>Is Enabled</strong></th>"
	puts $outfile "<th><strong>Code</strong></th>"
	puts $outfile "<th><strong>Comments</strong></th>" 
	puts $outfile "</tr>"
#Print contraint rows  
	foreach cons $cons_list {
		puts $outfile "<tr>" 
		puts $outfile "<td>[$cons attr NAME]</td>"     
		puts $outfile "<td>[$cons attr TITLE]</td>"  
		puts $outfile "<td>[[$cons entity] attr NAME]" 
#Print out field name for contraint if exists
	if {[$cons field] != ""} {
		puts $outfile ".[[$cons field] attr NAME]" 
	}
	puts $outfile "</td>"
	puts $outfile "<td>[$cons attr IS_CHECKED]</td>"
	puts $outfile "<td>[$cons attr IS_ENABLED]</td>"
	puts $outfile "<td>[$cons attr CODE]</td>"
	puts $outfile "<td>[$cons attr COMMENTS]</td>"
	puts $outfile "</tr>"  

	}
#End constraint table  
	puts $outfile " </table>"

}

#Print out incoming relationships
proc printincomingrelationships {in_rel_list table outfile } {
	puts $outfile "<table border=\"1\">" 
	puts $outfile "<tr>"
	puts $outfile "<th colspan=\"9\"><div id=\"title-bar\"><strong>Incoming Relationships</strong></div></th>"
	puts $outfile "</tr>"
	puts $outfile "<tr>"
	puts $outfile "<th>Name</th>"
	puts $outfile "<th>Title</th>"
	puts $outfile "<th>Parent Table</th>"
	puts $outfile "<th>Child Table</th>"
	puts $outfile "<th>Cardinality</th>"
	puts $outfile "<th>Type</th>"
	puts $outfile "<th>Is Checked</th>"
	puts $outfile "<th>Is Enabled</th>"
	puts $outfile "<th>Description</th>"
	puts $outfile "</tr>" 
#Print incoming relationship rows 
	foreach in_rel $in_rel_list { 
#List of foreign keys
		set fk_list [$in_rel list_of_foreign_keys]
		foreach fk $fk_list {
			set par [$fk parent $in_rel]
			puts $outfile "</tr>"
			puts $outfile "<tr>"
			puts $outfile "<td>[$in_rel attr NAME]</td>"
			puts $outfile "<td>[$in_rel attr TITLE]</td>"  
#Print parent table
			puts -nonewline $outfile "<td><a href=\"$::tablehtml"
			puts -nonewline $outfile "#"
			puts -nonewline $outfile "[[$in_rel parent] attr NAME]\">"
			puts $outfile "[[$in_rel parent] attr NAME]</a></td>" 
			puts -nonewline $outfile "<td>[$table attr NAME]</td>" 
			puts $outfile "<td>"
			puts -nonewline $outfile [printcardinality [$in_rel attr CARDINAL]] 
			puts $outfile "</td>"
			puts $outfile "<td>"
			puts -nonewline $outfile [printrelationtype [$in_rel attr TYPE]]
			puts $outfile "</td>"   
			puts $outfile "<td>[$in_rel attr IS_CHECKED]</td>"  
			puts $outfile "<td>[$in_rel attr IS_ENABLED]</td>"  
			puts $outfile "<td>From parent [[$in_rel parent] attr NAME]([$par attr NAME] ) to child [$table attr NAME]([$fk attr NAME])</td>"     
			puts $outfile "</tr>" 
		} 
	} 
#End incoming relationships table 
	puts $outfile "</table>"

}

#Prints outgoing relationships
proc printoutgoingrelationships { out_rel_list pk_list table outfile } { 

	puts $outfile "<table border=\"1\">" 
	puts $outfile "<tr>"
	puts $outfile "<th colspan=\"9\"><div id=\"title-bar\"><strong>Outgoing Relationships</strong></div></th>"
	puts $outfile "</tr>"
	puts $outfile "<tr>"
	puts $outfile "<th>Name</th>"
    puts $outfile "<th>Title</th>"
    puts $outfile "<th>Parent Table</th>"
    puts $outfile "<th>Child Table</th>"
    puts $outfile "<th>Cardinality</th>"
    puts $outfile "<th>Type</th>"
    puts $outfile "<th>Is Checked</th>"
    puts $outfile "<th>Is Enabled</th>"
    puts $outfile "<th>Description</th>"
	puts $outfile "</tr>" 
 
	foreach out_rel $out_rel_list { 
#List of foreign keys
	set fks [$out_rel list_of_fks] 
#Get primary key name for the foreign key
	foreach pk $pk_list {
		set pkname [$pk attr NAME] 
		}
#Print outgoing relationship rows 
		foreach fk $fks {
			set field [$fk field] 
			puts $outfile "</tr>"
			puts $outfile "<tr>"
			puts $outfile "<td>[$out_rel attr NAME]</td>"
			puts $outfile "<td>[$out_rel attr TITLE]</td>"  
			puts $outfile "<td>[$table attr NAME]</td>" 
#Print out child table
			puts -nonewline $outfile "<td><a href=\"$::tablehtml"
			puts -nonewline $outfile "#"
			puts -nonewline $outfile "[[$out_rel child] attr NAME]\">"
			puts $outfile "[[$out_rel child] attr NAME]</a></td>" 
			puts $outfile "<td>"
			puts -nonewline $outfile [printcardinality [$out_rel attr CARDINAL]] 
			puts $outfile "</td>"
			puts $outfile "<td>"
			puts -nonewline $outfile [printrelationtype [$out_rel attr TYPE]]
			puts $outfile "</td>"   
			puts $outfile "<td>[$out_rel attr IS_CHECKED]</td>"  
			puts $outfile "<td>[$out_rel attr IS_ENABLED]</td>"  
			puts $outfile "<td>From parent [$table attr NAME]($pkname) to child [[$out_rel child] attr NAME]([$field attr NAME])</td>"      
			puts $outfile "</tr>"   
		} 
 	}
#End outgoing relationships table 
	puts $outfile "</table>"

}

#Prints out triggers
proc printtriggers { tr_list outfile } { 
#Print tirgger headers
	puts $outfile "<table border=\"1\">" 
	puts $outfile "<tr>"
	puts $outfile "<th colspan=\"7\"><div id=\"title-bar\"><strong>Triggers</strong></div></th>"
	puts $outfile "</tr>" 
	puts $outfile "<tr>"
	puts $outfile "<th>Name</th>"
	puts $outfile "<th>Title</th>"
	puts $outfile "<th>Event</th>"
	puts $outfile "<th>Trigger Order</th>"
	puts $outfile "<th>Code</th>"
	puts $outfile "<th>Comments</th>"
	puts $outfile "<th colpsan=\"2\">Description</th>" 
	puts $outfile "</tr>"  
#Print trigger rows
		foreach trigger $tr_list {
			puts $outfile "<tr>"
			puts $outfile "<td>[$trigger attr NAME]</td>"
			puts $outfile "<td>[$trigger attr TITLE]</td>"  
			puts $outfile "<td>[$trigger attr EVENT]</td>"
			puts $outfile "<td>[$trigger attr TRIG_ORDER]</td>"   
			puts $outfile "<td>[$trigger attr CODE]</td>" 
			puts $outfile "<td>[$trigger attr COMMENTS]</td>" 
			puts $outfile "<td colpsan=\"2\">[$trigger attr DESCRIPT]</td>"
			puts $outfile "</tr>"
		}
#End trigger table 
	puts $outfile "</table>"

}



#Print out HTML from based on attributes of the tables in the sorted list  
proc printtables { finallist domain_list outfile } {
	#Print out HTML header
	puts $outfile "<html>"
	puts $outfile "<head>" 
	puts $outfile "<link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">"
	puts $outfile "</head>"
	
#Loop through each table and print out metadata to file
	foreach table $finallist {
#Table fields
		set field_list [$table list_of_fields]  
#Indexes
		set index_list [$table list_of_indexes]
#Constraints
		set cons_list [$table list_of_constraints]
#Incoming Relationships
		set in_rel_list [$table in_relations] 
#Outgoing Relationships
		set out_rel_list [$table out_relations]
#Primary Key Name
		set pk_list [$table list_of_primary]
#Triggers
		set tr_list [$table list_of_triggers]
	
#Print table metadata to the output file
	puts $outfile "<table border=\"1\">" 
	puts $outfile "<tr>"   
	puts $outfile "<th colspan=\"12\" id=[$table attr NAME]><div id=\"table-bar\"><strong>[$table attr NAME]</strong></div></th>"
	puts $outfile "</tr>"
	puts $outfile "<tr>"  
	puts $outfile "<th colspan=\"1\">Owner</th>"
    puts $outfile "<td colspan=\"11\">[$table attr OWNER]</td>" 
	puts $outfile "</tr>"
	puts $outfile "<tr>"  
	puts $outfile "<th colspan=\"12\">Description</th>"  
	puts $outfile "<tr>"  
	puts $outfile "<td colspan=\"12\" >[$table attr DESCRIPT]</td>"
	puts $outfile "</tr>"  
	puts $outfile "<tr>"  
	puts $outfile "<th colspan=\"12\">Comments</th>"
	puts $outfile "</tr>" 
	puts $outfile "<tr>"  
	puts $outfile "<td colspan=\"12\">[$table attr COMMENTS]</td>"
	puts $outfile "</tr>"  
	
#Print field rows to the output file
	printfields $field_list $domain_list $outfile   
	
#***You can reorder the printing of sections below this line to change the order they show up on the screen****#
#Print index table to the output file
	printindexes $index_list $outfile
	
#Print constraint table to the output file
	printconstraints $cons_list $outfile
	
#Print incoming relationships
	printincomingrelationships $in_rel_list $table $outfile
	
#Print outgoing relationships
	printoutgoingrelationships $out_rel_list $pk_list $table $outfile
	
#Print triggers
	printtriggers $tr_list $outfile
	
#Puts a line between table metadata blocks
	puts $outfile "&nbsp;"  
	
		}
#Ends html page
	puts $outfile "</html>"  
}
     
