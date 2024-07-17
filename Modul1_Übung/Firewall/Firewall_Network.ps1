# Variables
$SubnetMask = 24
# Server network
$ServerNetworkInterfaceName = "Server Switch"
$ServerNetworkFirewallIp = "192.168.0.1"
$ServerNetworkDcIp = "192.168.0.2"
# Building 1 network
$Building1NetworkInterfaceName = "Building 1 Switch"
$Building1NetworkFirewallIp = "192.168.1.1"
# Building 2 network
$Building2NetworkInterfaceName = "Building 2 Switch"
$Building2NetworkFirewallIp = "192.168.2.1"

# Configure Relay server interface
New-NetIPAddress -InterfaceAlias $ServerNetworkInterfaceName -IPAddress $ServerNetworkFirewallIp -AddressFamily IPv4 -PrefixLength $SubnetMask
Set-DnsClientServerAddress -InterfaceAlias $ServerNetworkInterfaceName -ServerAddresses $ServerNetworkDcIp

# Configure Relay building 1 interface
New-NetIPAddress -InterfaceAlias $Building1NetworkInterfaceName -IPAddress $Building1NetworkFirewallIp -AddressFamily IPv4 -PrefixLength $SubnetMask

# Configure Relay building 2 interface
New-NetIPAddress -InterfaceAlias $Building2NetworkInterfaceName -IPAddress $Building2NetworkFirewallIp -AddressFamily IPv4 -PrefixLength $SubnetMask

# Allow ICMP protocol (ping)
New-NetFirewallRule -DisplayName "Allow ICMPv4-In" -Protocol ICMPv4 -Enabled True -Direction Inbound -Action Allow