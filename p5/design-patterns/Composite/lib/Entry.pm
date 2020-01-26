package Entry;
use Moose::Role;

requires 'print_list';

has 'name' => (
    is  => 'ro',
    isa => 'Str',
);

1;
