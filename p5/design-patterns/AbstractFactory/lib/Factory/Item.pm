package Factory::Item;
use Moose::Role;

requires 'make_html';

has 'caption' => (
    is  => 'ro',
    isa => 'Str',
);

1;
