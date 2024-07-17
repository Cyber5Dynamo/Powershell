$domain_name = "awesome.local"
$netbios_name = "AWESOME"


# Installation der AD Domain Services Rolle
Install-WindowsFeature AD-Domain-Services –IncludeManagementTools -Verbose

# Erstellung einer neuen Domain (in einem neuen Forest)
Install-ADDSForest -DomainName $domain_name -ForestMode WinThreshold -DomainMode WinThreshold -DomainNetbiosName $netbios_name -InstallDns:$true

