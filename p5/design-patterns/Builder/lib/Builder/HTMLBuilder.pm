package Builder::HTMLBuilder;
use Moose;

with 'Builder';

sub make_title {
    my ( $self, $title ) = @_;
    $self->append_text("<html><head><title>$title</title></head>");
    $self->append_text("<h1>$title</h1>");
}

sub make_string {
    my ( $self, $string ) = @_;
    $self->append_text("<h1>$string</h1>");
}

sub make_items {
    my ( $self, $items ) = @_;
    $self->append_text('<ul>');
    for my $item (@$items) {
        $self->append_text("<li>$item</li>");
    }
    $self->append_text('</ul>');
}

sub close {
    my $self = shift;
    $self->append_text("</body></html>\n");
}

__PACKAGE__->meta->make_immutable();
