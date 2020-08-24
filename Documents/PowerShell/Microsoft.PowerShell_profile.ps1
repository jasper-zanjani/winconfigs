function prompt {
  Write-Host -ForegroundColor DarkCyan (Get-Item $pwd).BaseName -NoNewLine
  Write-Host ' ' -NoNewLine
  Write-Host -ForegroundColor DarkGray ('PS') -NoNewLine
  Write-Host '>' -NoNewLine
  return " "
}

function ytdl {
  param ($arg)
  Write-Host 'Working...' -NoNewLine
  youtube-dl --quiet --format mp4 $arg
  Write-Host 'Done!'
}

function vs {
  param ($arg)
  Start-Process "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\devenv.exe" $arg
}

function dtf {
  Invoke-Expression -Command "git --git-dir=$Env:USERPROFILE\winconfigs\.git --work-tree=$env:USERPROFILE $args" 
}

