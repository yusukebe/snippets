package Monster;
use Moose::Role;

has name => (
    is  => 'ro',
    isa => 'Str',
);

requires 'get_attack';
requires 'get_defence';

sub show_info {
    my $self = shift;
    printf( "Name: %s\n",    $self->name );
    printf( "Attack: %s\n",  $self->get_attack );
    printf( "Defence: %s\n", $self->get_defence );
}

1;
