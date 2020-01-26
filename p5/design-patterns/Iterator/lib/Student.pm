package Student;
use Moose;

has 'name' => (
    is => 'ro',
    isa => 'Str',
    reader => 'get_name',
);

__PACKAGE__->meta->make_immutable();
