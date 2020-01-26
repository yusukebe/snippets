package Trouble;
use Moo;
use strictures 2;
use namespace::clean;
use Function::Parameters;
use Types::Standard qw/Int/;

has 'number' => (
    is => 'ro',
    isa => Int,
);

method to_string() {
    return '[Trouble ' . $self->number . ']';
}

1;
