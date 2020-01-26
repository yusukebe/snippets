package ListFactory;
use Moose;

with 'Factory';

use ListFactory::Item::Link;
use ListFactory::Item::Tray;
use ListFactory::Page;

sub create_link {
    my ( $self, $caption, $url ) = @_;
    return ListFactory::Item::Link->new( caption => $caption, url => $url );
}

sub create_tray {
    my ( $self, $caption ) = @_;
    return ListFactory::Item::Tray->new( caption => $caption );
}

sub create_page {
    my ( $self, $title ) = @_;
    return ListFactory::Page->new( title => $title );
}

__PACKAGE__->meta->make_immutable();
