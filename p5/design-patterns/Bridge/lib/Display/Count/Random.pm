package Display::Count::Random;
use Moose;

extends 'Display::Count';

sub random_display {
    my ( $self, $times ) = @_;
    $self->multi_display( int( rand($times) ) );
}

__PACKAGE__->meta->make_immutable();
