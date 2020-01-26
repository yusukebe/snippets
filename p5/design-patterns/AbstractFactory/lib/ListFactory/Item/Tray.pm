package ListFactory::Item::Tray;
use Moose;

with qw/Factory::Item Factory::Item::Tray/;

sub make_html {
    my $self = shift;
    my $html = sprintf( "<li>\n%s\n<ul>\n", $self->caption );
    for my $item ( @{ $self->tray } ) {
        $html .= $item->make_html();
    }
    $html .= "</ul>\n</li>\n";
    return $html;
}

__PACKAGE__->meta->make_immutable();
