package Mail::URLFor::Role::Template;
use Moo::Role;
use URI::Escape 'uri_escape';
use Filter::signatures;
no warnings 'experimental::signatures';
use feature 'signatures';

use namespace::autoclean;

requires 'template';

our $VERSION = '0.01';

sub munge_messageid( $self, $messageid ) {
    uri_escape($messageid)
}

sub render( $self, $rfc822id ) {
    return sprintf $self->template, $self->munge_messageid( $rfc822id )
}

1;
