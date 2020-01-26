package ClassRoom;
use Moose;
use ClassRoom::Iterator;

with 'Role::Aggregate';

has 'students' => (
    traits   => ['Array'],
    is       => 'ro',
    isa      => 'ArrayRef[Student]',
    default  => sub { [] },
    handles  => {
        append_student => 'push',
        get_student_at => 'get',
        get_length     => 'count',
    }
);

sub iterator {
    my $self = shift;
    return ClassRoom::Iterator->new( class_room => $self );
}

__PACKAGE__->meta->make_immutable();
