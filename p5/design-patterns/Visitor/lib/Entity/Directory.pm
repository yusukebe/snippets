package Entity::Directory;
use Moose;

with 'Entity';

has 'dir' => (
    traits  => ['Array'],
    is      => 'ro',
    isa     => 'ArrayRef[Entity]',
    default => sub { [] },
    handles => {
        add => 'push',
    },
    reader => 'get_entries',
);

sub accept {
    my ( $self, $v ) = @_;
    $v->visit($self);
}

__PACKAGE__->meta->make_immutable();
