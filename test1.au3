$port = InputBox("Port IP Address", "What IP Address is the printer on? (10.0.16.94)")
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

testPort($port)
MsgBox(0,"Msg","Found the printer!")