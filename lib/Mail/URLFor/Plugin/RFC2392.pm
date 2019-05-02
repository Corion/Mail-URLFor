package Mail::URLFor::Plugin::RFC2392;
use strict;
use Moo 2;
use Filter::signatures;
no warnings 'experimental::signatures';
use feature 'signatures';

use URI;

our $VERSION = '0.01';

sub render($self, $rfc882messageid ) {
    return URI->new( $rfc882messageid, 'mid:' )
}

has 'moniker' => (
    is => 'ro',
    default => sub {
        __PACKAGE__ =~ /.*::(\w+)$/;
        $1
    },
);

1;

__END__

=head1 SEE ALSO

RFC2392 Content-ID and Message-ID Uniform Resource Locators

L<https://tools.ietf.org/html/rfc2392>

=cut