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

1;

__END__

=head1 SEE ALSO

OSX mail link URL format:

message:%3C0100015a808a3ce2-973c1a1d-cc5a-44f6-a60b-d0c006e10ba0-000000@email.amazonses.com%3E


=cut