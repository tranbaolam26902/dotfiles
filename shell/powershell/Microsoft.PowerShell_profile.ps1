oh-my-posh init pwsh --config "C:\Users\campbells\.config\shell\themes\violet.omp.json" | Invoke-Expression
Import-Module PSReadLine

Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -Colors @{ InlinePrediction = '#C683D7'}


Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord
