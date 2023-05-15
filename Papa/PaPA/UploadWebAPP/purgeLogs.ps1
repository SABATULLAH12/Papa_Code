$LogFolder = "D:\home\site\wwwroot\Logs";
$DaysToKeepLogsAround = 90;
Get-ChildItem -Path $LogFolder -Recurse -File | Where LastWriteTime  -lt  (Get-Date).AddDays(-$DaysToKeepLogsAround) | Remove-Item -Force