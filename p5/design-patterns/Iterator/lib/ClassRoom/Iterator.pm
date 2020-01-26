package ClassRoom::Iterator;
use Moose;

with 'Role::Iterator';

has 'class_room' => (
    is  => 'ro',
    isa => 'ClassRoom',
);
has 'index' => (
    traits    => ['Counter'],
    is        => 'ro',
    isa       => 'Num',
    default   => sub { 0 },
    handles  => {
        increment_index => 'inc',
    },
);

sub has_next {
    my $self = shift;
    return $self->index < $self->class_room->get_length();
}

sub next {
    my $self = shift;
    my $student = $self->class_room->get_student_at( $self->index );
    $self->increment_index();
    return $student;
}

__PACKAGE__->meta->make_immutable();
