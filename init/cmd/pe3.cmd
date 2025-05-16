set interfaces ge-0/0/1 unit 0 description ConnectedToCE3
set interfaces ge-0/0/1 unit 0 family inet address 7.77.1.2/24
set interfaces ge-0/0/1 unit 0 family iso
set interfaces ge-0/0/1 unit 0 family mpls
set interfaces ge-0/0/3 unit 0 description ConnectedToP3
set interfaces ge-0/0/3 unit 0 family inet address 5.57.1.2/24
set interfaces ge-0/0/3 unit 0 family iso
set interfaces ge-0/0/3 unit 0 family mpls
set interfaces ge-0/0/4 unit 0 description ConnectedToP4
set interfaces ge-0/0/4 unit 0 family inet address 6.67.1.2/24
set interfaces ge-0/0/4 unit 0 family iso
set interfaces ge-0/0/4 unit 0 family mpls
set interfaces lo0 unit 0 family inet address 7.7.7.7/32
set interfaces lo0 unit 0 family iso address 47.0005.0019.2168.7000.00
set logical-systems CE3 interfaces ge-0/0/0 unit 0 description ConnectedToPE3
set logical-systems CE3 interfaces ge-0/0/0 unit 0 family inet address 7.77.1.1/24
set logical-systems CE3 interfaces ge-0/0/0 unit 0 family iso
set logical-systems CE3 interfaces ge-0/0/0 unit 0 family mpls
set logical-systems CE3 interfaces lo0 unit 1 family inet address 77.77.77.77/32
set logical-systems CE3 interfaces lo0 unit 1 family iso address 47.0005.0019.2168.7700.00
set logical-systems CE3 routing-options router-id 77.77.77.77
set routing-options router-id 7.7.7.7
set protocols bgp group ibgp type internal
set protocols bgp group ibgp local-address 7.7.7.7
set protocols bgp group ibgp family inet unicast extended-nexthop
set protocols bgp group ibgp family inet-vpn unicast extended-nexthop
set protocols bgp group ibgp family inet6-vpn unicast
set protocols bgp group ibgp neighbor 1.1.1.1
set protocols bgp group ibgp neighbor 2.2.2.2
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
set policy-options policy-statement L3VPN_PE3_CE3_export term 0 then community add L3VPN_1_COM
set policy-options policy-statement L3VPN_PE3_CE3_export term 0 then next-hop 7.7.7.7
set policy-options policy-statement L3VPN_PE3_CE3_export term 0 then accept
set policy-options policy-statement L3VPN_PE3_CE3_import term 0 from community L3VPN_1_COM
set policy-options policy-statement L3VPN_PE3_CE3_import term 0 then accept
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
set logical-systems CE3 protocols bgp group eBGPv4 type external
set logical-systems CE3 protocols bgp group eBGPv4 export BGP_export
set logical-systems CE3 protocols bgp group eBGPv4 peer-as 64512
set logical-systems CE3 protocols bgp group eBGPv4 neighbor 7.77.1.2
set logical-systems CE3 policy-options policy-statement BGP_export term 0 from protocol direct
set logical-systems CE3 policy-options policy-statement BGP_export term 0 from interface lo0.1
set logical-systems CE3 policy-options policy-statement BGP_export term 0 then accept
set logical-systems CE3 routing-options rib inet.0 static route 0.0.0.0/0 next-hop 7.77.1.2
set logical-systems CE3 routing-options router-id 77.77.77.77
set logical-systems CE3 routing-options autonomous-system 100
