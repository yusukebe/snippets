package Display;
use Moose;
use DisplayImpl;

has 'impl' => (
    is => 'ro',
    isa => 'DisplayImpl',
);

sub open {
    my $self = shift;
    $self->impl->raw_open();
}

sub print {
    my $self = shift;
    $self->impl->raw_print();
}

sub close {
    my $self = shift;
    $self->impl->raw_close();
}

sub display {
    my $self = shift;
    $self->open();
    $self->print();
    $self->close();
}

__PACKAGE__->meta->make_immutable();
