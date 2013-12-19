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

#Truncate existing file(This global variable is set in HTMLReport.tcl)
close [open $::domainfull "w" ]

#Set output file(This global variable is set in HTMLReport.tcl) 
set outfile [open $::domainfull "a" ] 

#Source file for domain procedures(This global variable is set in HTMLReport.tcl) 
source  $::domainincludefull

#Prints out the HTML for domain.html
printdomains $finallist $outfile   

#Release file handle
close $outfile   

 
  



 

 


 
