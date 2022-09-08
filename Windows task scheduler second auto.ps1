$Action = New-ScheduledTaskAction -Execute 'C:\temp\Run Second Auto.bat'

$trigger = New-ScheduledTaskTrigger -Daily -At 2:03pm

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "SFTPAutoUpload" -Description "Auto Upload from local directory to remote directory"
