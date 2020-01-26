package Display::Count;
use Moose;

extends 'Display';

sub multi_display {
    my ( $self, $times ) = @_;
    $self->open();
    for ( my $i = 0 ; $i < $times ; $i++ ) {
        $self->print();
    }
    $self->close();
}

__PACKAGE__->meta->make_immutable();
