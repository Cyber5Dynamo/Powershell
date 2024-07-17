# Create a new User Jon Doe
New-ADUser -SamAccountName "jdoe" -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "John Doe" -GivenName "John" -Surname "Doe" -SamAccountName "jdoe" -UserPrincipalName "jdoe@domain.com" -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "John Doe" -GivenName "John" -Surname "Doe" -SamAccountName "jdoe" -UserPrincipalName "jdoe@domain.com" -Path "OU=Users,DC=domain,DC=com" -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true

Remove-ADUser -Identity "jdoe" -Confirm:$false

# Create a new group EngineeringTeam
New-ADGroup -Name "EngineeringTeam" -SamAccountName "EngineeringTeam" -GroupCategory Security -GroupScope Global
New-ADGroup -Name "EngineeringTeam" -SamAccountName "EngineeringTeam" -GroupCategory Security -GroupScope Global -Path "OU=Groups,DC=domain,DC=com" -Description "Engineering Department Group"

# Add John to the EngineeringTeam group
Add-ADGroupMember -Identity "EngineeringTeam" -Members "jdoe"

# Remove John from group
Remove-ADGroupMember -Identity "EngineeringTeam" -Members "jdoe" -Confirm:$false

