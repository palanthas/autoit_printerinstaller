==================================================================

                 SHARP PRINTER DRIVER README FILE
                                           
==================================================================

Thank you for purchasing our product. 
This document gives you the details of important matters which
have to be checked before you install the printer driver. 
Be sure to read this document thoroughly before continuing with 
the installation.

Some of contents described in this file may be unique, 
corresponding to specific kinds of models or drivers.

-----------------------------------------------------------------

 Tips

-----------------------------------------------------------------

- If you upgrade the printer driver, be sure to install the new
  version of the printer driver after deleting the older version.
  Otherwise, the new version of driver may prevent the older
  version of printer driver from working.

- If it is possible, try to use the latest versions of 
  software applications, which are compatible with the operating 
  system.
  A document created on an old version of a software application 
  may not print correctly if printed from a newer version of the 
  software. In this case, try saving the document using the 
  new version, and then print it.

- When some printer drivers do not print normally, if you use 
  other types of printer drivers, the printing may be improved.
  Features of each of printer drivers are the following:
  - PCL printer driver
      It provides high speed printing.
  - PostScript printer driver
      It provides high reproducibility for images including fine
      graphics.
  - PostScript PPD printer driver
      Some specific applications may normally print by only the 
      PPD printer driver.

- Brightly colored characters , lines , fill effects or patterns
  (yellow, light blue, etc.) may not appear when printed. 
  In this event, try the following:

 (A) Text consisting only of characters/lines/fill effects/patterns
     created with CAD software:
     Try selecting the "Text To Black" checkbox or
     "Vector To Black" checkbox in the "Advanced" tab before
     printing. 
     (In this case, sections where photographs, colored 
     characters and lines overlap will all be printed in black.)

 (B) Text that includes photographs, colored characters and 
     lines:
     Try decreasing the "Brightness" setting in the "Image 
     adjustment" dialog box that appears when you select the 
     "Image adjustment" button in the "Advanced" tab.
     (This will change the brightness of the overall printed 
     image.)

 (C) Other cases
     If you tried the above and still did not obtain the desired 
     printing result, change the color of the character or line, 
     or make it thicker using the application's control for font 
     or line

- When using a Novell network, if a blank Page prints after the
  Job is completed, turn off the [Form Feed After Job] found in
  the network setting in the PC client software.

- When you print the document created by different computers, 
  the computer that you use may not register the fonts that use
  in the document.
  If you print the document in this case, some printed documents
  slightly show the difference against the original document 
  (when you print it by the original computer).
  In this case, you are required to register the fonts that use
  in the document into your using computer.

- When occurring the garbled characters, if you change the 
  "Font Source:" of "Font..." of "Advanced" tab, the printed results
  may improve.

- The position, size, and color of a watermark shown in the 
  watermark preview (on the left side of the "Watermark" tab) in 
  the driver properties may differ from the actual printed result.
  Use the preview only as a general guideline.

- The displayed "number of pages" in the print queue may not 
  be automatically updated. You can press the F5 key to 
  update the displayed number.

- If N-Up printing is selected in the "Main" tab when a watermark 
  has been selected, an image will appear indicating that one 
  watermark will be printed on the paper. The image simply 
  indicates that a watermark has been selected; it does not 
  indicate the printing result. A watermark will actually be 
  printed on each page of the document. 
  For example, when a multi-page document is printed using 2-Up 
  printing, two watermarks will be printed on each sheet of paper.

- Even if the color text with big font size is printed with 
  "Text to Black", it may not be printed with black. In that case, 
  you may solve this problem by checking "Vector to Black".

- If the printer driver language in use is different from the OS 
  language, "Watermark" is not sometimes printed correctly. 

- When you use SC-Print2005, switching the user, you have to 
  restart your computer. 

- When you use "Get Address Book" feature, you need 
  MSXML 6.0 or later.

-----------------------------------------------------------------

                      About PCL6 Driver

-----------------------------------------------------------------

- When you are using Windows PCL printer driver with some
  applications such as Adobe FreeHand, a watermark might not be
  printed even if you have set to print watermark in the printer
  driver.

- It may take time to print an original containing a large amount
  of graphic data from a drawing application. This problem may be
  solved by taking the following measures.
  Open the printer properties dialog box and then change
  "Graphics Mode:" to "Raster" found under the "Advanced" tab in
  the print driver. 

- When printing an image by using applications such as Microsoft Paint,
  Microsoft Word, image data may appear under the printed image. 
  This might be solved by modifying the graphic mode of the 
  "Advanced" tab to be "Raster" after opening the printer
  properties of print dialog.

- With some applications such as Lotus Approach if you select
  "Download Fonts" as the "Font Source:" and select "Download as
  bitmap font" as the "TrueType Mode:" in the "Font..." dialog,
  shrunk fonts might be printed. At that time, please use
  resident fonts or select "Download as TrueType" as the
  "TrueType Mode:".

- When printing is performed using Adobe's Acrobat,
  garbled characters may be printed. This problem may be solved by
  taking the following measures.
  Open the printer properties of the print dialog and then change
  the "Graphics Mode:" found under the "Advanced" tab to "Raster",
  in addition, press the "Font..." button on the "Advanced" tab, and
  then select "Download Fonts" for "Font Source:" and select
  "Download as bitmap font" for "TrueType Mode:".

- When you use the Lotus123 and the map is not printed, this 
  problem may be solved by taking the following measures
  introduced in the Lotus's Web page.

     -Open the printer property, and select the "Advanced"tab.
     -Select the 300dpi in the "Input Resolution:".

- When overlapping the characters or being printing as the dotted 
  lines change into the full lines, this problem may be solved by 
  taking the following measures.

     -Open the printer property, and select the "Advanced"tab.
     -Select the 300dpi in the "Input Resolution:".

- If the ruled lines for the graph area is not printed, select 
  "Fit To Paper Size" setting in the "Zoom Settings".

- If the watermark of which size is larger than the printing area
  is set, the watermark is not correctly printed. Please adjust
  the watermark size within the printing area.

-----------------------------------------------------------------

                          About PS Driver

-----------------------------------------------------------------

- When printing using the Adobe Acrobat, the print may not be output
  normally.This may be solved by the following:
  - Use the PPD driver
  - Turn off the "PS Pass-through" on the "Advanced" tab
  - Turn off the "Choose Paper Source By PDF Paper Size" on the 
    "Print" dialog of the Adobe Acrobat

- Adobe PostScript uses the binding edge definitions "LongEdge" 
  / "ShortEdge" for paper orientation. Our PS3 driver is using 
  "Book" / "Tablet" for "image orientation" to provide an easy 
  to understand user interface.
  Some Adobe application like AcrobatReader will inform the 
  driver that the document is Portrait even if the images are 
  Landscape so that the Main page of the driver will incorrectly 
  show the page orientation in the page icons under "Frequently 
  Used Settings." 
  As a result of this mixing up by the application, the driver 
  may flip the binding edge (Book/Tablet) for Landscape 
  document.  If this occurs, just set the PS3 driver to the 
  opposite binding direction and the document will print 
  correctly.

- With some applications such as Adobe Photoshop or Corel Draw,
  some extra features of the Windows PS printer driver such as
  "Watermark", "N-Up Printing" or "Different Paper" may not work
  properly. At that time, when you use the PCL printer driver,
  this problem may be solved.

- When the printing is cancelled during using the PS printer 
  driver, the blank paper may be output.

- When you print the type of download font by using the download
  of "Download as TrueType (Type 42)", the error may occur.
  At this time, if you set the "Download Font Mode:" into the
  "Download as Bitmap (Type 3)" by the "Font..." of "Advanced"
  tab, the print may be improved.

- When some overlapping objects (especially black objects and 
  color ones) is printed, the printed color for the edge may be
  different from the one displayed on the PC monitor.
  This problem may be solved by taking the following measures.
  Open the printer properties of the print dialog and then change
  the "Image Type" found under the "Color" tab to "Custom",
  in addition, press the "Advanced Color..." button on the "Color"
  tab, and then select "Color" for "Neutral Gray:" and uncheck
  the "Black Over Print".

-----------------------------------------------------------------

                        About PS PPD Driver

-----------------------------------------------------------------

- When you use the PageMaker, please print in the following method
  described in the Readme of PageMaker.
  - When you open the print dialog box by [File] - [Print] of the
    menu bar, pressing the [Alt] key, operate to open the 
    [Print Dialog Box].

- When you execute the watermark print, the watermark is printed
  to the [Portrait] direction, regardless of the print setting.

- If you use N-up printing and staple feature, a printer may not
  staple papers to the correct position.
  If you check the staple position, use the PCL6, or PS
  driver except PPD drivers.

- Correct stapling or punching depends on the paper size or the 
  paper orientation.

- If stapling or punching function is used in duplex mode, then 
  the "Flip on short edge" option may have to be selected.

-----------------------------------------------------------------

                     About Overlay Function

-----------------------------------------------------------------

- When you register the overlay form data, please print only one 
  page.

- When you execute the overlay print, please print the document in
  the same printer setting as created the overlay form data.

-----------------------------------------------------------------

          About Limitations for each Application Software

-----------------------------------------------------------------

- Some image printing problems such as PhotoShop printing of an
  oversize image( bigger then the printer margins ) which results
  in extra printed matter or a blue screen. Reducing the image
  size to fit the paper size may solve this problem.

- If Microsoft Publisher is installed, sometimes the Configuration
  settings of the printer will return to the default values.

- When printing is performed using the Adobe Acrobat Reader,
  garbled characters may be printed. This problem may be solved
  by taking the following measures.
  Open the printer properties of the print dialog and then click
  on the "Font..." button found using the "Advanced" tab, and then
  select "Download Fonts" for "Font Source:" and select "Download
  fonts".

- When the print error occurs on the Microsoft binder, this
  problem  may be solved by taking the following measures.
  - Turn off the [Print binder as a single job] of the [Binder
    Options].
  - Set all setting items of the printer driver into the default.

- If you stop printing at the alert dialog at the time of print
  in some application software such as Microsoft Word 2000, 
  the print may not stop properly. 

- If the print setting is changed for Wordpad, please go to the
  Properties page which appears after clicking the [Properties]
  on [Printer...] from [Page Setup] dialog. The print setting from
  [Properties] on [Print] dialog is sometimes not applicable.

- When editing multiple documents in Microsoft Word 2000 or later, 
  opening the driver properties and changing the print settings 
  for one document may result in changes in the print settings 
  for the other documents. In this case, reset the print 
  settings before printing each document.

- If a document is printed using a large font in Microsoft Word and 
  other applications, the application may be shut down by Windows.
  Fonts larger than 300 points can be set in Microsoft Word; however, 
  do not use a font larger than approximately 300 points for 
  printing.
  When using a large font in a document, we recommend that you 
  frequently save the document so edits are not lost.

- Some English fonts may not print correctly from WordPad. In 
  this case, use a different word processor application 
  (Microsoft Word, etc.)

- In WordPad, printing may not take place correctly if you 
  specify a page range starting from the second page. In this 
  event, select "All" for the pages to be printed. 

- When "Color Mode" is set to [Automatic] on the [Color] tab of 
  the printer driver even if the print result is black and white,
  the following types of print jobs will be counted as 4-color 
  (Y (Yellow), M (Magenta),C (Cyan), and Bk (Black)) print jobs.
  To be always counted as a black and white job, select 
  [Black and White].
  - When the data is created as color data.
  - When the application treats the data as color data even though 
    the data is black and white.
  - When an image is hidden under a black and white image.

- Graphics in a Power Point document may print in black, try the following:
    (1) Select "Print" from the "File" menu in Power Point.
    (2) Set off in the Grayscale function in the Print dialog box.
    (3) Click the "OK" button.
        ===> Printing begins.

- When you use the Internet Explorer with "Protected Mode",  
  some functions  may not be used correctly. This probrem may be 
  solved by modifying the  "Enable Protected Mode" of the "Security" 
  tab to be "OFF" after selecting  the "Tool"-"Internet Options" 
  menu in Internet Explorer. 

- When you print data by using "2-sided print" or "N-up print" 
  prepared by application such as Microsoft Word, you might not 
  receive the desired print result. 
  We recommend you use the printer driver feature.

-----------------------------------------------------------------

This software is based in part on the work of the Independent 
JPEG Group.

-----------------------------------------------------------------

This product includes software developed by the OpenSSL Project 
for use in the OpenSSL Toolkit. (http://www.openssl.org/) 
This product includes cryptographic software written by Eric Young 
(eay@cryptsoft.com) 

-----------------------------------------------------------------

SHARP Corporation does not guarantee the accuracy of the 
information contained in this document and the software (SHARP 
printer driver) which accompanies this document for any purpose 
other than what they are intended for.

-----------------------------------------------------------------

Microsoft, Windows, Windows Server, Windows Vista, Windows 7 are registered 
trademarks of Microsoft Corporation in the United States and worldwide. 
Windows is an abbreviation for the Microsoft Windows operating 
system. 

All other company names and product names are trademarks or
registered trademarks of the respective companies.

-----------------------------------------------------------------

