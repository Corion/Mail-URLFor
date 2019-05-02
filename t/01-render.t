#!perl
use strict;
use warnings;
use Test::More tests => 3;

use Mail::URLFor;

# We'll assume that all plugins load OK here, even though they haven't
# been written by ourselves
my $links = Mail::URLFor->new();

my $urls = $links->urls_for('12345.abcdef@example.com');

is $urls->{'Gmail'}, 'https://mail.google.com/mail/#search/rfc822msgid%3A12345.abcdef%40example.com', "Gmail plugin renders";
is $urls->{'Thunderlink'}, 'thunderlink://messageid=12345.abcdef%40example.com', "Thunderlink plugin renders";
is $urls->{'OSX'}, 'message:%3C12345.abcdef%40example.com%3E', "OSX plugin renders";

done_testing;