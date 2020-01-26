package Factory::Item::Link;
use Moose::Role;

has 'url' => (
    is  => 'ro',
    isa => 'Str',
);

1;
