#use of semicolon in the powershell script
get-process w*; get-service a* | format-table -property status, Name

write-output "this is the first line of code"; write-output "this is what which goes to second line"; write-output "this is the third line etc etc."
#therefore, as you see the one line in the pwsh can be used to write code in multiple lines using semicolon.

