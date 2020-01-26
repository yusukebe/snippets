package Monster::Dragon;
use Moose;

with 'Monster';

sub get_attack {
    return 60;
}

sub get_defence {
    return 45;
}

__PACKAGE__->meta->make_immutable();
