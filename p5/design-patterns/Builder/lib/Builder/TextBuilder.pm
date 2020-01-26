package Builder::TextBuilder;
use Moose;

with 'Builder';

sub make_title {
    my ( $self, $title ) = @_;
    $self->append_text("==============================\n");
    $self->append_text("# $title\n");
    $self->append_text("\n");
}

sub make_string {
    my ( $self, $string ) = @_;
    $self->append_text("## $string\n");
    $self->append_text("\n");
}

sub make_items {
    my ( $self, $items ) = @_;
    for my $item (@$items) {
        $self->append_text(" * $item\n");
    }
    $self->append_text("\n");
}

sub close {
    my $self = shift;
    $self->append_text("==============================\n");
}

__PACKAGE__->meta->make_immutable();
