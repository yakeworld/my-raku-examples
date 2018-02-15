#!/usr/bin/env perl6

use v6;

my $sig = :(Int $i, Str $s);
say (10, 'answer') ~~ $sig;
# OUTPUT: «True␤»
given $sig {
    when :(Str, Int) { say 'mismatch' }
    when :($, $) { say 'match' }
    default          { say 'no match' }
}
# OUTPUT: «match␤»
