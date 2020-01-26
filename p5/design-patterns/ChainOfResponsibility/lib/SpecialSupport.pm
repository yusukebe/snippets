package SpecialSupport;
use Moo;
use strictures 2;
use namespace::clean;
use Function::Parameters;
use Types::Standard qw/Int/;

with 'Support';

has 'number' => (
    is => 'ro',
    isa => Int,
);

method resolve($trouble) {
    return $trouble->number == $self->number;
}

1;
