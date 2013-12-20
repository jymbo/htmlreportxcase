 #******************************************************************************#
 # File: HTMLReport.tcl                                                         #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file contain all the configurations for the HTML Report       #
 #           program. It also has control flow for the program by calling       #
 #           all other tcl files                                                #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#

#Primary directory for project files(change this value if moving directories must use forward slashes "/" for windows machines)
set primarydirectory "C:/Users/Public/Documents/XCASE/"
set parentdirectory "" 

#Set global variable for diagram images
set ::diagramfull "" 
set ::diagramdir  "diagrams/"
append ::diagramfull  $primarydirectory $::diagramdir
 
#HTML file for views
set ::viewhtml "view.html" 
set ::viewfull ""
append viewfull $primarydirectory $::viewhtml 

#HTML file for tables
set ::tablehtml "table.html"  
set ::tablefull ""
append tablefull $primarydirectory $::tablehtml
 
#HTML file for tree nodes
set ::treehtml  "TreeNodes.js"     
set ::treefull ""
append treefull $primarydirectory $::treehtml

#HTML file for procedures
set ::procedurehtml  "procedure.html"     
set ::procedurefull ""
append procedurefull $primarydirectory $::procedurehtml 

#HTML file for functions
set ::functionhtml  "function.html"     
set ::functionfull ""
append functionfull $primarydirectory $::functionhtml 

#HTML file for title
set ::titlehtml "title.htm"  
set ::titlefull ""
append titlefull $primarydirectory $::titlehtml
 
#HTML file for domains
set ::domainhtml "domain.html"  
set ::domainfull ""
append domainfull $primarydirectory $::domainhtml
 
#HTML file for rules
set ::rulehtml "rule.html"  
set ::rulefull ""
append rulefull $primarydirectory $::rulehtml  

#HTML file for defaults
set ::defaulthtml "default.html"  
set ::defaultfull ""
append defaultfull $primarydirectory $::defaulthtml 

     
#TCL files to populate html files with code
set tabletcl "table.tcl"  
set viewtcl "views.tcl"
set treetcl "treeview.tcl"
set proceduretcl "procedure.tcl" 
set functiontcl "function.tcl"
set titletcl "title.tcl"  
set domaintcl "domain.tcl" 
set ruletcl "rule.tcl" 
set defaulttcl "default.tcl" 


#TCL include files 
#Table
set tableincludetcl "table_include.tcl"
set ::tableincludefull ""  
append tableincludefull $primarydirectory $tableincludetcl
#Domain
set domainincludetcl "domain_include.tcl"
set ::domainincludefull ""  
append domainincludefull $primarydirectory $domainincludetcl 
#Default
set defaultincludetcl "default_include.tcl"
set ::defaultincludefull ""  
append defaultincludefull $primarydirectory $defaultincludetcl 
#Function
set functionincludetcl "function_include.tcl"
set ::functionincludefull ""  
append functionincludefull $primarydirectory $functionincludetcl 
#Procedure
set procedureincludetcl "procedure_include.tcl"
set ::procedureincludefull ""  
append procedureincludefull $primarydirectory $procedureincludetcl 
#Rule
set ruleincludetcl "rule_include.tcl"
set ::ruleincludefull ""  
append ruleincludefull $primarydirectory $ruleincludetcl 
#View
set viewincludetcl "view_include.tcl"
set ::viewincludefull ""  
append viewincludefull $primarydirectory $viewincludetcl 
#Title
set titleincludetcl "title_include.tcl"
set ::titleincludefull ""  
append titleincludefull $primarydirectory $titleincludetcl 

 
#Populate HTML files 
 
#View
source [append parentdirectory $primarydirectory $viewtcl]  
set  parentdirectory "" 
#Treeview
source [append parentdirectory $primarydirectory $treetcl]  
set  parentdirectory "" 
#Procedure
source [append parentdirectory $primarydirectory $proceduretcl]
set  parentdirectory ""
#Function
source [append parentdirectory $primarydirectory $functiontcl] 
set  parentdirectory ""  
#Title
source [append parentdirectory $primarydirectory $titletcl] 
set  parentdirectory "" 
#Domain
source [append parentdirectory $primarydirectory $domaintcl]  
set  parentdirectory ""
#Rules
source [append parentdirectory $primarydirectory $ruletcl] 
set  parentdirectory "" 
#Table
source [append parentdirectory $primarydirectory $tabletcl]  
set  parentdirectory "" 
#Default
source [append parentdirectory $primarydirectory $defaulttcl]  
 

 
  


