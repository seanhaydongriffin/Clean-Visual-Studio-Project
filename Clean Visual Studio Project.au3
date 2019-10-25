

Local $project_path = FileSelectFolder("Select the folder of the Visual Studio project to clean", "R:\")
;ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $project_path = ' & $project_path & @CRLF & '>Error code: ' & @error & @CRLF) ;### Debug Console

if StringLen($project_path) > 0 Then

	Local $bin_path = $project_path & "\bin"
	Local $obj_path = $project_path & "\obj"
	Local $solution_path = StringLeft($project_path, StringInStr($project_path, "\", 1, -1) - 1)
	Local $solution_name = StringReplace($solution_path, "R:\", "")
	Local $vssscc_path = $solution_path & "\" & $solution_name & ".vssscc"
	Local $suo_path = $solution_path & "\" & $solution_name & "\v14\.suo"

;	ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $bin_path = ' & $bin_path & @CRLF & '>Error code: ' & @error & @CRLF) ;### Debug Console
;	ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $obj_path = ' & $obj_path & @CRLF & '>Error code: ' & @error & @CRLF) ;### Debug Console
;	ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $vssscc_path = ' & $vssscc_path & @CRLF & '>Error code: ' & @error & @CRLF) ;### Debug Console
;	ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $suo_path = ' & $suo_path & @CRLF & '>Error code: ' & @error & @CRLF) ;### Debug Console

	DirRemove($bin_path, 1)
	DirRemove($obj_path, 1)
	FileDelete($vssscc_path)
	FileDelete($suo_path)
EndIf

