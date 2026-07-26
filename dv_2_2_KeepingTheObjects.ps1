$PSStyle.OutputRendering = 'PlainText'
Get-Process a* |
Get-Member |
Select-Object -Property MemberType -Unique

#the below command is invalid by the way:
#Get-Process a* | Get-Member -Property MemberType | Select-Object -Unique
#get-member contain multiple things like properties, methods, events, etc. and the -Property parameter is not valid for Get-Member.
#get-process w* | Get-Member -Type AliasProperty | Select-Object -Property Name

write-output "this is where things get started"; Get-Process a* | Get-Member -Type AliasProperty | Select-Object -Property Name
#paste above in powershell 7 and get the output there, seems something is wrong with access on this vdi.

get-process | where-object {$_.name -eq "powershell"} | Get-Member  #could have used gm only instead of Get-Member
