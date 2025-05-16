set interfaces ge-0/0/0 unit 0 description ConnectedToP1
set interfaces ge-0/0/0 unit 0 family inet address 3.35.1.2/24
set interfaces ge-0/0/0 unit 0 family iso
set interfaces ge-0/0/0 unit 0 family mpls
set interfaces ge-0/0/1 unit 0 description ConnectedToP2
set interfaces ge-0/0/1 unit 0 family inet address 4.45.1.2/24
set interfaces ge-0/0/1 unit 0 family iso
set interfaces ge-0/0/1 unit 0 family mpls
set interfaces ge-0/0/2 unit 0 description ConnectedToP4
set interfaces ge-0/0/2 unit 0 family inet address 5.56.1.1/24
set interfaces ge-0/0/2 unit 0 family iso
set interfaces ge-0/0/2 unit 0 family mpls
set interfaces ge-0/0/3 unit 0 description ConnectedToPE3
set interfaces ge-0/0/3 unit 0 family inet address 5.57.1.1/24
set interfaces ge-0/0/3 unit 0 family iso
set interfaces ge-0/0/3 unit 0 family mpls
set interfaces ge-0/0/4 unit 0 description ConnectedToPE4
set interfaces ge-0/0/4 unit 0 family inet address 5.58.1.1/24
set interfaces ge-0/0/4 unit 0 family iso
set interfaces ge-0/0/4 unit 0 family mpls
set interfaces lo0 unit 0 family inet address 5.5.5.5/32
set interfaces lo0 unit 0 family iso address 47.0005.0019.2168.5000.00
set routing-options router-id 5.5.5.5
set protocols isis interface ge-0/0/0.0 level 2 metric 1
set protocols isis interface ge-0/0/0.0 point-to-point
set protocols isis interface ge-0/0/1.0 level 2 metric 100
set protocols isis interface ge-0/0/1.0 point-to-point
set protocols isis interface ge-0/0/2.0 level 2 metric 10
set protocols isis interface ge-0/0/2.0 point-to-point
set protocols isis interface ge-0/0/3.0 level 2 metric 1
set protocols isis interface ge-0/0/3.0 point-to-point
set protocols isis interface ge-0/0/4.0 level 2 metric 1
set protocols isis interface ge-0/0/4.0 point-to-point
set protocols isis interface fxp0.0 disable
set protocols isis interface lo0.0
set protocols isis level 1 disable
set protocols ldp interface ge-0/0/0.0
set protocols ldp interface ge-0/0/1.0
set protocols ldp interface ge-0/0/2.0
set protocols ldp interface ge-0/0/3.0
set protocols ldp interface ge-0/0/4.0
set protocols ldp interface fxp0.0 disable
set protocols mpls interface ge-0/0/0.0
set protocols mpls interface ge-0/0/1.0
set protocols mpls interface ge-0/0/2.0
set protocols mpls interface ge-0/0/3.0
set protocols mpls interface ge-0/0/4.0
set protocols mpls interface fxp0.0 disable
