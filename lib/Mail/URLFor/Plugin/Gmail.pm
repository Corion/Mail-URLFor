package Mail::URLFor::Plugin::Gmail;
use Moo 2;

our $VERSION = '0.01';

has 'template' => (
    is => 'ro',
    default => 'https://mail.google.com/mail/#search/rfc822msgid%%3A%s',
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

Gmail advanced search options - L<https://support.google.com/mail/answer/7190?hl=en>

=cut

