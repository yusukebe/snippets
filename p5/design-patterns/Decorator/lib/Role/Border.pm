package Role::Border;
use Moose::Role;

has 'display' => (
    is  => 'ro',
    isa => 'Role::Display',
);

1;
