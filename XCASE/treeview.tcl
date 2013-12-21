 #******************************************************************************#
 # File: treeview.tcl                                                           #
 # Author: Jim Ferris http://dennysjymbo.blogspot.com/                          #
 # Create Date: 12/17/2013                                                      #
 # Comments: This file populates TreeNodes.js with nodes for the objects        #
 #            in the xcase diagram                                              #  
 #                                                                              #
 # Revisions:                                                                   #
 #******************************************************************************#

#Iterator for tables
set t_integer 1
#Iterator for views  
set v_integer 1 
#Iterator for triggers
set tr_integer 1 
#Iterator for functions
set f_integer 1 
#Iterator for domains
set d_integer 1 
#Iterator for rules
set r_integer 1 
#Iterator for defaults
set de_integer 1
#Iterator for diagrams
set da_integer 1

#List of table names
set pre_table_list " "  
#List of view names
set pre_view_list " " 
#List of procedure names
set pre_procedure_list " " 
#List of functions names
set pre_function_list " " 
#List of domain names
set pre_domain_list " " 
#List of rule names 
set pre_rule_list " "
#List of default names  
set pre_default_list " " 

#List of table identifiers
set table_list [dict list_of_tables] 
#List of view identifiers
set view_list [dict list_of_views] 
#List of procedure and function identifiers
set procedure_list [dict list_of_procedures]  
#List of model identifiers
set model [dict get_model]
#List of domain identifiers  
set domain_list [dict list_of_domains]  
#List of rule identifiers
set rule_list [dict list_of_rules]  
#List of default identifiers
set default_list [dict list_of_defaults]

#Create a sorted list of table names
foreach table $table_list {  
	lappend  pre_table_list  "[$table attr NAME]"
}
set sorted_table_list [lsort -ascii $pre_table_list]
  
#Create a sorted list of view names
foreach view $view_list {  
	lappend  pre_view_list  "[$view attr V_NAME]"
}
set sorted_view_list [lsort -ascii $pre_view_list] 

#Create a sorted list of procedure names
foreach procedure $procedure_list { 
	if {  [$procedure attr TYPE]=="Procedure"} {
		lappend  pre_procedure_list  "[$procedure attr NAME]"  
	} 
#Create a sroted list of function names
	set sorted_procedure_list [lsort -ascii $pre_procedure_list]  

	if {  [$procedure attr TYPE]=="Function"} {
		lappend  pre_function_list  "[$procedure attr NAME]"  
	}
}
set sorted_function_list [lsort -ascii $pre_function_list]  

#Create a sorted list of domain names
foreach domain $domain_list {  
	lappend  pre_domain_list  "[$domain attr D_NAME]"
}
set sorted_domain_list [lsort -ascii $pre_domain_list]     

#Create a sorted list of rule names
foreach rule $rule_list {  
	lappend  pre_rule_list  "[$rule attr NAME]"
}
set sorted_rule_list [lsort -ascii $pre_rule_list]  

#Create a sorted list of default names
foreach default $default_list {  
	lappend  pre_default_list  "[$default attr NAME]"
}
set sorted_default_list [lsort -ascii $pre_default_list]   
 
#Set output file
set outfile [open $::treefull "w"] 

#Generate tree view nodes
puts $outfile " <!-- This frameset document includes the FolderTree script.  Script found in: http://www.treeview.net Author: Marcelino Alves Martins -->"
puts $outfile " ICONPATH = 'Support/'"  
puts $outfile " USEICONS = 1"
puts $outfile "{"
puts $outfile "foldersTree = gFld('', 'title.htm')"
puts $outfile "foldersTree.iconSrc = ICONPATH + 'Gif/iconHome.gif'"
puts $outfile "Diag_Node = insFld(foldersTree, gFld('Dictionary Objects', ''))"
puts $outfile "Diag_Node.iconSrc = ICONPATH + 'Gif/physical.gif'"
puts $outfile "Diag_Node.iconSrcClosed = ICONPATH + 'Gif/physical.gif'"
puts $outfile "{"
puts $outfile "DD_1 = insFld(Diag_Node, gFld('[$model attr MODEL_NAME]',''))"
puts $outfile "DD_1.iconSrc = ICONPATH + 'Gif/dimensionalmodel.gif'"
puts $outfile "DD_1.iconSrcClosed = ICONPATH + 'Gif/dimensionalmodel.gif'"   
puts $outfile "DD_1A  = insFld(DD_1, gFld('Tables','table.html'))"  
puts $outfile "DD_1A.iconSrc = ICONPATH + 'Gif/bluefldr.gif'"
puts $outfile "DD_1A.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'" 
#Output table nodes   
if { [llength $sorted_table_list] >0} {
	foreach table $sorted_table_list {   
		puts $outfile "DomainSection_$t_integer = insFld(DD_1A, gFld('$table','$::tablehtml#$table'))"
		puts $outfile "DomainSection_$t_integer.iconSrc = ICONPATH + 'Gif/table.png'"
		puts $outfile "DomainSection_$t_integer.iconSrcClosed = ICONPATH +'Gif/table.png'"
		incr t_integer
	}  
} 
#Output view nodes 
if { [llength $sorted_view_list] >0} {
	puts $outfile "DD_1B  = insFld(DD_1, gFld('Views','$::viewhtml'))"  
	puts $outfile "DD_1B.iconSrc = ICONPATH + 'Gif/bluefldr.gif'"
	puts $outfile "DD_1B.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'"
	foreach view $sorted_view_list {   
		puts $outfile "DomainSection_$v_integer = insFld(DD_1B, gFld('$view','$::viewhtml#$view'))"
		puts $outfile "DomainSection_$v_integer.iconSrc = ICONPATH + 'Gif/view.png'"
		puts $outfile "DomainSection_$v_integer.iconSrcClosed = ICONPATH +'Gif/view.png'"
		incr v_integer  
	} 
}
#Output procedure nodes
if { [llength $sorted_procedure_list] >0} {
	puts $outfile "DD_1C  = insFld(DD_1, gFld('Procedures','$::procedurehtml'))"  
	puts $outfile "DD_1C.iconSrc = ICONPATH + 'Gif/bluefldr.gif'"
	puts $outfile "DD_1C.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'"                    
	foreach procedure $sorted_procedure_list {
		puts $outfile "DomainSection_$tr_integer = insFld(DD_1C, gFld('$procedure','$::procedurehtml#$procedure'))"
		puts $outfile "DomainSection_$tr_integer.iconSrc = ICONPATH + 'Gif/proc.png'"
		puts $outfile "DomainSection_$tr_integer.iconSrcClosed = ICONPATH +'Gif/proc.png'"
		incr tr_integer  
	}  
}
#Output function nodes  
if { [llength $sorted_function_list] >0} {
	puts $outfile "DD_1D  = insFld(DD_1, gFld('Functions','$::functionhtml'))"  
	puts $outfile "DD_1D.iconSrc = ICONPATH + 'Gif/bluefldr.gif'"
	puts $outfile "DD_1D.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'" 
	foreach function $sorted_function_list {
		puts $outfile "DomainSection_$f_integer = insFld(DD_1D, gFld('$function','$::functionhtml#$function'))"
		puts $outfile "DomainSection_$f_integer.iconSrc = ICONPATH + 'Gif/fx.png'"
		puts $outfile "DomainSection_$f_integer.iconSrcClosed = ICONPATH +'Gif/fx.png'"
		incr f_integer  
	} 
}
#Output domain nodes 
if { [llength $sorted_domain_list] >0} {
	puts $outfile "DD_1F  = insFld(DD_1, gFld('Domains','$::domainhtml'))"  
	puts $outfile "DD_1F.iconSrc = ICONPATH + 'Gif/bluefldr.gif'"
	puts $outfile "DD_1F.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'"
	foreach domain $sorted_domain_list {
		puts $outfile "DomainSection_$d_integer = insFld(DD_1F, gFld('$domain','$::domainhtml#$domain'))"
		puts $outfile "DomainSection_$d_integer.iconSrc = ICONPATH + 'Gif/domain.png'"
		puts $outfile "DomainSection_$d_integer.iconSrcClosed = ICONPATH +'Gif/domain.png'"
		incr d_integer  
	} 
} 
#Output rule nodes
if { [llength $sorted_rule_list] >0} {   
	puts $outfile "DD_1G  = insFld(DD_1, gFld('Rules','$::rulehtml'))"  
	puts $outfile "DD_1G.iconSrc = ICONPATH + 'Gif/bluefldr.gif'"
	puts $outfile "DD_1G.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'"
	foreach rule $sorted_rule_list {
		puts $outfile "DomainSection_$r_integer = insFld(DD_1G, gFld('$rule','$::rulehtml#$rule'))"
		puts $outfile "DomainSection_$r_integer.iconSrc = ICONPATH + 'Gif/rule.png'"
		puts $outfile "DomainSection_$r_integer.iconSrcClosed = ICONPATH +'Gif/rule.png'"
		incr r_integer  
	}  
}
#Output default nodes  
if { [llength $sorted_default_list] >0} {
	puts $outfile "DD_1H  = insFld(DD_1, gFld('Defaults','$::defaulthtml'))"  
	puts $outfile "DD_1H.iconSrc = ICONPATH + 'Gif/bluefldr.gif'"
	puts $outfile "DD_1H.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'"   
	foreach default $sorted_default_list {
		puts $outfile "DomainSection_$de_integer = insFld(DD_1H, gFld('$default','$::defaulthtml#$default'))"
		puts $outfile "DomainSection_$de_integer.iconSrc = ICONPATH + 'Gif/default.png'"
		puts $outfile "DomainSection_$de_integer.iconSrcClosed = ICONPATH +'Gif/default.png'"
		incr de_integer  
	} 
}
#Create nodes for each diagram (change to directory with diagram images)
cd $::diagramfull
#Populate contents list with names of files in diagram directory 
set contents [glob  *] 
if { [llength $contents] >0} { 
#Output diagram nodes                           
puts $outfile "DD_1E  = insFld(DD_1, gFld('Diagrams',''))"  
puts $outfile "DD_1E.iconSrc = ICONPATH + 'Gif/bluefldr.gif'"
puts $outfile "DD_1E.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'"  
    foreach file $contents {
		puts $outfile "DomainSection_$de_integer = insFld(DD_1E, gFld('[file rootname $file]','$::diagramdir$file'))"
		puts $outfile "DomainSection_$de_integer.iconSrc = ICONPATH + 'Gif/schema.gif'"
		puts $outfile "DomainSection_$de_integer.iconSrcClosed = ICONPATH +'Gif/schema.gif'"
      }
}
puts $outfile "}"
puts $outfile "}" 
#Release file handle
close $outfile     
