oh-my-posh --init --shell pwsh --config ~/craver.omp.json | Invoke-Expression
Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

function RunKsqlMigrationsDocker() {
	docker run -v $PWD/src:/share/ksql-migrations confluentinc/ksqldb-server:0.23.1 ksql-migrations $args
}

Set-Alias ksql-migrations RunKsqlMigrationsDocker
Set-Alias -Value kubectl -Name k
