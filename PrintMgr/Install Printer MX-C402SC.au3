#Include "PrintMgr.au3"

Global $answer, $printer, $driver, $port, $rerun

;~ Scratch Notes
;~ $printer = "Sharp MX-C402SC BW"
;~ $driver = "SHARP MX-C402SC PCL6"
;~ $port = "SharpMXC402SCPCL6"

MsgBox(0, "Printer Installer", "Installing Sharp MX-C402SC")

;~ =========================================================================================
;~ 									USER CONFIGURATION
;~ =========================================================================================

$printer = InputBox("Printer Installer", "What do you want to call this printer? (Sharp MX-C402SC B/W)")
$port = InputBox("Port Installer", "What IP Address is the printer on? (10.0.16.94)")
Func testPort($port)
   Local $i = 0
   While $i = 0
	  Local $knockknock = Ping($port, 1000)
	  If $knockknock Then
		 $i = 1
	  Else
		 $pingAnswer = MsgBox(50,"Printer Installer", "The printer doesn't appear to be reachable. What should I do?")
		 If $pingAnswer = 3 Then
			   Exit
			ElseIf $pingAnswer = 4 Then
			   $i = $i
			ElseIf $pingAnswer = 5 Then
			   $i = 1
			EndIf
	  EndIf
   WEnd

   EndFunc

$driver = "SHARP MX-C402SC PCL6"

;~ =========================================================================================
;~ 									ADD TCP-IP PRINTER
;~ =========================================================================================

$answer = MsgBox(1,"Printer Installer", "Are you sure you want to add printer: " & $printer & " and its driver on port " & $port & "?")
If $answer = 1 Then
   ; Add a driver, called "Samsung ML-451x 501x Series", and driver inf file is ".\Samsung5010\sse2m.inf"
   _PrintMgr_AddPrinterDriver($driver, "Windows NT x86", @scriptDir & "\Drivers\EnglishA\PCL6\64bit", @scriptDir & "\Drivers\EnglishA\PCL6\64bit\sn0emenu.inf")

   ; Add a TCP/IP printer port, called "MyTCPIPPrinterPort", with IPAddress = 192.168.1.10 and Port = 9100
   _PrintMgr_AddTCPIPPrinterPort($port, $port, 9100)

   ; Add a printer, give it the name "My Printer", use the driver called "Samsung ML-451x 501x Series" and the port called "MyTCPIPPrinterPort"
   _PrintMgr_AddPrinter($printer, $driver, $port)

   MsgBox(0,"Printer Installer","Printer Added")
Else
   MsgBox(0,"Printer Installer","Printer install cancelled.")
EndIf

$rerun = MsgBox(4,"Printer Installer", "Do you want to install this printer again? (Same port and driver)")
If $rerun = 6 Then
   $printer = InputBox("Printer Installer", "What do you want to call this printer? (Sharp MX-C402SC B/W)")
   ; Add a printer, give it the name "My Printer", use the driver called "Samsung ML-451x 501x Series" and the port called "MyTCPIPPrinterPort"
   _PrintMgr_AddPrinter($printer, $driver, $port)
   MsgBox(0,"Printer Installer","Printer Added")
Else
   MsgBox(0,"Printer Installer","Finished")
EndIf
