package Builder;
use Moose::Role;

has 'buffer' => (
    traits => ['String'],
    is => 'rw',
    isa => 'Str',
    default => '',
    handles => {
        append_text => 'append',
    },
);

requires 'make_title';
requires 'make_string';
requires 'make_items';
requires 'close';

sub get_result {
    my $self = shift;
    return $self->buffer;
}

1;
