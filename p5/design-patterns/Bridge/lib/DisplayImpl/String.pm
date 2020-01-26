package DisplayImpl::String;
use Moose;

with 'DisplayImpl';

has 'string' => (
    is => 'ro',
    isa => 'Str',
);

has 'width' => (
    is => 'ro',
    isa => 'Int',
);

around BUILDARGS => sub {
    my $orig = shift;
    my $class = shift;
    my %params = @_;
    return $class->$orig(
        string => $params{string},
        width => length $params{string},
    );
};

sub raw_open {
    my $self = shift;
    $self->print_line();
}

sub raw_print {
    my $self = shift;
    printf( "|%s|\n", $self->string );
}

sub raw_close {
    my $self = shift;
    $self->print_line();
}

sub print_line {
    my $self = shift;
    print "+";
    for ( my $i = 0 ; $i < $self->width; $i++ ) {
        print "-";
    }
    print "+\n";
}

__PACKAGE__->meta->make_immutable();
