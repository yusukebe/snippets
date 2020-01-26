package Entity::File;
use Moose;

with 'Entity';

sub accept {
    my ( $self, $v ) = @_;
    $v->visit($self);
}

__PACKAGE__->meta->make_immutable();
