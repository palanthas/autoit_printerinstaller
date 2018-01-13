#Include "PrintMgr.au3"

Global $answer, $printer, $driver, $port

$printer = "frontier color"
$driver = "SHARP MX-C402SC PCL6"
$port = "10.0.16.94"

;~ =========================================================================================
;~ 									SHOW PRINTER AND DRIVER CONFIGURATION
;~ =========================================================================================

;~ ; List all installed printers
;~ #Include <Array.au3>
;~ $aPrinterList = _PrintMgr_EnumPrinter()
;~ _ArrayDisplay($aPrinterList)

;~ ; List all printers configuration
;~ #Include <Array.au3>
;~ $aPrinterConfig = _PrintMgr_EnumPrinterConfiguration()
;~ _ArrayDisplay($aPrinterConfig)

;~ ; List all installed printer drivers
;~ #Include <Array.au3>
;~ $aDriverList = _PrintMgr_EnumPrinterDriver()
;~ _ArrayDisplay($aDriverList)


;~ =========================================================================================
;~ 									REMOVE TCP-IP PRINTER
;~ =========================================================================================

$answer = MsgBox(1,"REMOVE PRINTER", "Are you sure you want to remove printer: " & $printer & "?")
If $answer = 1 Then
   ; Remove a printer called "My old Lexmark printer" :
   _PrintMgr_RemovePrinter($printer)
EndIf

$answer = MsgBox(1,"REMOVE PRINTER", "Are you sure you want to remove driver: " & $driver & "?")
If $answer = 1 Then
   ; Remove the driver called "Lexmark T640" :
   _PrintMgr_RemovePrinterDriver($driver)
EndIf

$answer = MsgBox(1,"REMOVE PRINTER", "Are you sure you want to remove port: " & $port & "?")
If $answer = 1 Then
   ; Remove the TCP/IP printer port called "TCP/IP"
   _PrintMgr_RemoveTCPIPPrinterPort($port)
EndIf

MsgBox(0,"Printer Removed","Printer removed")

;~ =========================================================================================
;~ 									ADD TCP-IP PRINTER
;~ =========================================================================================

;~ $answer = MsgBox(1,"Printer Installer", "Are you sure you want to add printer: " & $printer & " and its driver and port?")
;~ If $answer = 1 Then
;~    ; Add a driver, called "Samsung ML-451x 501x Series", and driver inf file is ".\Samsung5010\sse2m.inf"
;~    _PrintMgr_AddPrinterDriver("SHARP MX-C402SC PCL6", "Windows NT x86", @scriptDir & "\Drivers\EnglishA\PCL6\64bit", @scriptDir & "\Drivers\EnglishA\PCL6\64bit\sn0emenu.inf")

;~    ; Add a TCP/IP printer port, called "MyTCPIPPrinterPort", with IPAddress = 192.168.1.10 and Port = 9100
;~    _PrintMgr_AddTCPIPPrinterPort("SharpMXC402SCPCL6", "10.0.16.94", 9100)

;~    ; Add a printer, give it the name "My Printer", use the driver called "Samsung ML-451x 501x Series" and the port called "MyTCPIPPrinterPort"
;~    _PrintMgr_AddPrinter("Sharp MX-C402SC BW", "SHARP MX-C402SC PCL6", "SharpMXC402SCPCL6")

;~    MsgBox(0,"Printer Installer","Printer Added")
;~ Else
;~    MsgBox(0,"Printer Installer","Printer install cancelled.")
;~ EndIf