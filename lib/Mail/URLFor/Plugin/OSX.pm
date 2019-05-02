package Mail::URLFor::Plugin::OSX;
use Moo 2;

our $VERSION = '0.01';

has 'template' => (
    is => 'ro',
    default => 'message:%%3C%s%%3E',
);

has 'moniker' => (
    is => 'ro',
    default => sub {
        __PACKAGE__ =~ /.*::(\w+)$/;
        $1
    },
);

with 'Mail::URLFor::Role::Template';

around 'munge_messageid' => sub { $_[2] };

1;

__END__

=head1 SEE ALSO

L<https://apple.stackexchange.com/questions/300437/is-it-possible-to-deep-link-to-a-specific-email-in-mail-app-on-mac-os-x>


=cut