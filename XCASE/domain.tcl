 #******************************************************************************#
 # File: domain.tcl                                                             #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file populates domain.html with meta data from domains        #
 #           in an xcase diagram                                                #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#

#Get list of domains
set domain_list [dict list_of_domains]
#List of domain id's and domain names
set postlist {} 
                       
#Populate list of domain id's and domain names                       
foreach domain $domain_list {
set domain_name  [$domain attr D_NAME]
	lappend postlist [list "$domain" "$domain_name"] 
} 
#Sort the list by the domain name
set sorted [lsort -ascii -index 1  $postlist]

#Get final list of just domain id's sorted by domain name
set finallist {}
foreach var $sorted {
	lappend finallist [lindex $var 0] 	
} 

#Get list of tables
set table_list [dict list_of_tables]

#Create list of table id's and table names 
set tablepostlist {} 

#Get list of domains
set domain_list [dict list_of_domains]

#Populate list of table id's and table names                       
foreach table $table_list {
	set table_name  [$table attr NAME]
	lappend tablepostlist [list "$table" "$table_name"] 
} 
#Sort the list by the table name
set tablesorted [lsort -ascii -index 1  $tablepostlist] 

#Get final list of just table names
set tablefinallist {}
	foreach var $tablesorted {
	lappend tablefinallist [lindex $var 0] 	
}

set domain_field_list {}

	foreach table $tablefinallist {
#Table fields
		set field_list [$table list_of_fields] 
 
#Create list of field id's and field names 
set fieldpostlist {} 

#Populate list of table id's and table names                       
foreach field $field_list {
	set field_name  [$field attr NAME]
	lappend fieldpostlist [list "$field" "$field_name"] 
} 
#Sort the list by the field name
set fieldsorted [lsort -ascii -index 1  $fieldpostlist] 

#Get final list of just field id's
set fieldfinallist {}
	foreach var $fieldsorted {
	lappend fieldfinallist [lindex $var 0] 	
}

	foreach field $fieldfinallist {   
	
#Append to domain_field_list if field is associated with a domain
		if { [lsearch -exact $domain_list "dom[$field attr I_DOMAIN]"] >= 0 } {
			lappend domain_field_list [list "dom[$field attr I_DOMAIN]" "[$table attr NAME]" "[$field attr NAME]"]
		
		}
   
	} 
}  



#Truncate existing file(This global variable is set in HTMLReport.tcl)
close [open $::domainfull "w" ]

#Set output file(This global variable is set in HTMLReport.tcl) 
set outfile [open $::domainfull "a" ] 

#Source file for domain procedures(This global variable is set in HTMLReport.tcl) 
source  $::domainincludefull

#Prints out the HTML for domain.html
printdomains $finallist $domain_field_list $outfile   

#Release file handle
close $outfile   

 
  



 

 


 
