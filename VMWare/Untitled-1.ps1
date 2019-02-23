# Prompt for credentials to login into SQL Server
$serverInstance = "192.168.174.203"
$credential = Get-Credential

# Retrieve error logs since yesterday
Get-SqlErrorLog -ServerInstance $serverInstance -Credential $credential -Since Yesterday | Out-GridView
# done