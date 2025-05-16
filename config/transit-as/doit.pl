#!/usr/bin/perl

$i = $ARGV[0];
$j = $ARGV[1];
print <<EOF;
set interfaces ge-0/1/9 unit 0 family iso
set interfaces ge-0/1/9 unit 0 family inet6 address 2001:222:ffff:8$i\:\:$j/64
set protocols isis interface ge-0/1/9.0
EOF
