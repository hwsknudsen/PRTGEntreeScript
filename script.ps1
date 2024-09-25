#prtg
Param(
)
$req = Invoke-WebRequest -Uri "http://SERVERNAME/ReportServer/Pages/ReportViewer.aspx?%2fViking+Food%2fFLS+Custom+Reports%2fHenrik%2fTStamp&rs:format=CSV" -UseDefaultCredentials
$date = [DateTime]$req.Content.Substring(8,22)
$date

$currentDate = Get-Date

$age = $currentDate - $Date

$minutesold = $age.Minutes

#$minutesold


$x=[string]$minutesold+":Last update is "+$minutesold+" minutes."
write-host $x

exit 0
