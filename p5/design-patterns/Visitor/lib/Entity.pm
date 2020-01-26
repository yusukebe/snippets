package Entity;
use Moose::Role;

requires 'accept';

has 'name' => (
    is  => 'ro',
    isa => 'Str',
    reader => 'get_name'
);

1;
