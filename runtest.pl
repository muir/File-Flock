#!/usr/bin/perl -w

use Test::Harness qw(&runtests $verbose);

$verbose = 0;
foreach (@ARGV) {
    if (/^(?:-v|--verbose)$/) {
        $verbose = 1;
    }
}

runtests(glob("t/*.t"));
