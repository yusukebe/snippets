package Monster::Slime;
use Moose;

with 'Monster';

sub get_attack {
    return 15;
}

sub get_defence {
    return 10;
}

__PACKAGE__->meta->make_immutable();
