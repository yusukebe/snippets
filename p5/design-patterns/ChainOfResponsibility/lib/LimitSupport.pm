package LimitSupport;
use Moo;
use strictures 2;
use namespace::clean;
use Function::Parameters;
use Types::Standard qw/Int/;

with 'Support';

has 'limit' => (
    is => 'ro',
    isa => Int,
);

method resolve($trouble) {
    return ($trouble->number < $self->limit);
}

1;
