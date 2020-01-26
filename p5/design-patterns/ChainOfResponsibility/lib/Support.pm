package Support;
use Moo::Role;
use strictures 2;
use namespace::clean;
use Function::Parameters;
use Types::Standard qw/Str Object/;

has 'name' => (
    is => 'ro',
    isa => Str,
);

has 'next' => (
    is => 'rw',
    isa => Object,
);

requires 'resolve';

method support($trouble) {
    if ( $self->resolve($trouble) ) {
        $self->done($trouble);
    } elsif ( $self->next ) {
        $self->next->support($trouble);
    } else {
        $self->fail($trouble);
    }
}

method done($trouble) {
    print $trouble->to_string . " is resolve by [" . $self->name . "].\n";
}

method fail($trouble) {
    print $trouble->to_string . " is cannot be resolved.\n";
}

1;
