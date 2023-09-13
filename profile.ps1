Import-Module posh-git

oh-my-posh init pwsh --config "C:/Users/robinr/easy.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Set-Alias -Value kubectl -Name k