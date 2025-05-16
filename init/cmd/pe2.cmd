set interfaces ge-0/0/2 unit 0 description ConnectedToCE2
set interfaces ge-0/0/2 unit 0 family inet address 2.22.1.2/24
set interfaces ge-0/0/2 unit 0 family iso
set interfaces ge-0/0/2 unit 0 family mpls
set interfaces ge-0/0/3 unit 0 description ConnectedToP1
set interfaces ge-0/0/3 unit 0 family inet address 2.23.1.1/24
set interfaces ge-0/0/3 unit 0 family iso
set interfaces ge-0/0/3 unit 0 family mpls
set interfaces ge-0/0/4 unit 0 description ConnectedToP2
set interfaces ge-0/0/4 unit 0 family inet address 2.24.1.1/24
set interfaces ge-0/0/4 unit 0 family iso
set interfaces ge-0/0/4 unit 0 family mpls
set interfaces lo0 unit 0 family inet address 2.2.2.2/32
set interfaces lo0 unit 0 family iso address 47.0005.0019.2168.2000.00
set logical-systems CE2 interfaces ge-0/0/1 unit 0 description ConnectedToPE2
set logical-systems CE2 interfaces ge-0/0/1 unit 0 family inet address 2.22.1.1/24
set logical-systems CE2 interfaces ge-0/0/1 unit 0 family iso
set logical-systems CE2 interfaces ge-0/0/1 unit 0 family inet6 address 2:22:1::1/64
set logical-systems CE2 interfaces ge-0/0/1 unit 0 family mpls
set logical-systems CE2 interfaces lo0 unit 1 family inet address 22.22.22.22/32
set logical-systems CE2 interfaces lo0 unit 1 family iso address 47.0005.0019.2168.2200.00
set logical-systems CE2 routing-options router-id 22.22.22.22
set routing-options router-id 2.2.2.2
set protocols bgp group ibgp type internal
set protocols bgp group ibgp local-address 2.2.2.2
set protocols bgp group ibgp family inet unicast extended-nexthop
set protocols bgp group ibgp family inet-vpn unicast extended-nexthop
set protocols bgp group ibgp family inet6-vpn unicast
set protocols bgp group ibgp neighbor 1.1.1.1
set protocols bgp group ibgp neighbor 7.7.7.7
set protocols bgp group ibgp neighbor 8.8.8.8
set protocols bgp multipath
set protocols isis interface ge-0/0/3.0 level 2 metric 1
set protocols isis interface ge-0/0/3.0 point-to-point
set protocols isis interface ge-0/0/4.0 level 2 metric 1
set protocols isis interface ge-0/0/4.0 point-to-point
set protocols isis interface fxp0.0 disable
set protocols isis interface lo0.0
set protocols isis level 1 disable
set protocols ldp interface ge-0/0/3.0
set protocols ldp interface ge-0/0/4.0
set protocols ldp interface fxp0.0 disable
set protocols mpls interface ge-0/0/3.0
set protocols mpls interface ge-0/0/4.0
set protocols mpls interface fxp0.0 disable
set policy-options policy-statement L3VPN_PE1_CE1_export term 0 then next-hop 2.2.2.2
set policy-options policy-statement L3VPN_PE2_CE2_export term 0 then community add L3VPN_1_COM
set policy-options policy-statement L3VPN_PE2_CE2_export term 0 then accept
set policy-options policy-statement L3VPN_PE2_CE2_import term 0 from community L3VPN_1_COM
set policy-options policy-statement L3VPN_PE2_CE2_import term 0 then accept
set policy-options policy-statement LBPP term 1 then load-balance per-packet
set policy-options policy-statement mpath-resolve then multipath-resolve
set policy-options community L3VPN_1_COM members target:64512:1
set routing-options resolution preserve-nexthop-hierarchy
set routing-options resolution rib inet6.0 import mpath-resolve
set routing-options resolution rib inet.0 import mpath-resolve
set routing-options resolution rib bgp.l3vpn-inet6.0 import mpath-resolve
set routing-options resolution rib bgp.l3vpn.0 import mpath-resolve
set routing-options autonomous-system 64512
set routing-options forwarding-table export LBPP
set logical-systems CE2 protocols bgp group eBGPv4 type external
set logical-systems CE2 protocols bgp group eBGPv4 export BGP_export
set logical-systems CE2 protocols bgp group eBGPv4 peer-as 64512
set logical-systems CE2 protocols bgp group eBGPv4 neighbor 2.22.1.2
set logical-systems CE2 policy-options policy-statement BGP_export term 0 from protocol direct
set logical-systems CE2 policy-options policy-statement BGP_export term 0 from interface lo0.1
set logical-systems CE2 policy-options policy-statement BGP_export term 0 then accept
set logical-systems CE2 routing-options rib inet.0 static route 0.0.0.0/0 next-hop 2.22.1.2
set logical-systems CE2 routing-options router-id 22.22.22.22
set logical-systems CE2 routing-options autonomous-system 100
