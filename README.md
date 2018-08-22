HTML Report Export for the XCASE Modeling Tool
===============
**Overview**
  
  The project is composed of a series of TCL scripts that allows users of the ©XCASE (http://www.xcase.com/) database modeling tool to export model metadata to HTML documents. These HTML documents are incorporated in a website that can be used as a means for modeling team members and end users to view ©XCASE model metadata without having to be in the ©XCASE tool.
  
  The website contains 3 frames, a top frame, a title frame and a tree view for the model objects:
  
  ![Image 1](https://raw.github.com/jymbo/htmlreportxcase/master/XCASE/Documentation/tableview.png)
  
  The tree view allows you to click on folder nodes for the model tables, views, procedures, functions, etc. and view their metadata. There is also a directory that you can dump your exported model images to and have them show up automatically in nodes under the diagrams folder node after running the scripts:
  
  ![Image 2](https://raw.github.com/jymbo/htmlreportxcase/master/XCASE/Documentation/diagramview.png)
  
**Installing**

1. Pull down the source files to a directory on your local machine. You will need to open up HTMLReport.tcl and edit the first line of code to change the directory to whatever directory you dumped the files to: 

        #Primary directory for project files(change this value if moving directories must use forward slashes "/" 
        #for windows machines)
        set primarydirectory "C:/Users/Public/Documents/XCASE/"

2. In the ©XCASE database modeling tool go to the Code --> Custom Scripts and Reports menu. Once on this menu click the New button and give your HTML report export job a name:

  ![Image 3](https://raw.github.com/jymbo/htmlreportxcase/master/XCASE/Documentation/customscriptsscreen.png)
  

3. In Template File text box, browse to the directory where you dumped the files and select HTMLReport.tcl. In the Output File text box browse to the same directory and select HTMLReport.txt. Then click the Run button. After the job finished running you should see a popup box stating "The generated script is empty":

  ![Image 4](https://raw.github.com/jymbo/htmlreportxcase/master/XCASE/Documentation/tclselectview.png)
  
You should now be able to open index.htm and see your model's metadata in your web browser.

**Adding Diagram Images**

In order for your diagram images to show up in nodes under the diagram folder in the tree view, you will need to export these images from ©XCASE by going to File -->Export Current Display then selecting a directory to dump the .emf file. I convert these .emf files into .jpg file in an image editor and dump them into the diagrams directory. When you run the export job again, the images will show up as nodes with the file name (extension removed) under the diagrams folder.
