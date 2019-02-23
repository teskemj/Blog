$cred = Get-Credential

Connect-VIServer -Server 192.168.174.243 -SaveCredentials -Credential $cred
get-vm | Start-VM
get-vm dc1,vcen*,web* | Start-VM
get-vm | Shutdown-VMGuest -Verbose 