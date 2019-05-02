package Mail::URLFor::Plugin::Thunderlink;
use Moo 2;

our $VERSION = '0.01';

has 'template' => (
    is => 'ro',
    default => 'thunderlink://messageid=%s',
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

=head1 Installing Thunderlink for Thunderbird

Install the "Thunderlink" plug-in / add-on for Thunderbird and
register the C<thunderlink://> URI. This allows your browser to directly
display emails in Thunderbird.

L<https://addons.thunderbird.net/de/thunderbird/addon/thunderlink/>

Current Thunderlink maintainer:

L<https://github.com/mikehardy/thunderlink>

=head2 Windows installation

In addition to installing Thunderlink, you need to make the C<thunderlink://>
protocol known to Windows by making the following registry associations:

    REGEDIT4

    [HKEY_CLASSES_ROOT\thunderlink]
    @="URL:thunderlink Protocol"
    "URL Protocol"=""

    [HKEY_CLASSES_ROOT\thunderlink\shell]

    [HKEY_CLASSES_ROOT\thunderlink\shell\open]

    [HKEY_CLASSES_ROOT\thunderlink\shell\open\command]
    @="\"C:\\Program Files (x86)\\Mozilla Thunderbird\\thunderbird.exe\" -thunderlink \"%1\""

Alternatively, save the above lines into a C<.reg> file and execute that.

=cut