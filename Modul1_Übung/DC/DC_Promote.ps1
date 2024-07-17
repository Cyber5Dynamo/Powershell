New-NetIPAddress -InterfaceAlias $ServerNetworkInterfaceName -IPAddress $ServerNetworkDcIp -AddressFamily IPv4 `
-PrefixLength $SubnetMask -DefaultGateway $ServerNetworkFirewallIp

# Installation der AD Domain Services Rolle
Install-WindowsFeature AD-Domain-Services –IncludeManagementTools -Verbose

# Erstellung einer neuen Domain (in einem neuen Forest)
Install-ADDSForest -DomainName $DomainName -SafeModeAdministratorPassword $securePassword -NoRebootOnCompletion:$false `
-ForestMode WinThreshold -DomainMode WinThreshold -DomainNetbiosName $NetbiosName -InstallDns:$true -Force