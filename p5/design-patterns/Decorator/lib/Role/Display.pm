package Role::Display;
use Moose::Role;

requires 'get_columns';
requires 'get_rows';
requires 'get_row_text';

sub show {
    my $self = shift;
    for ( my $i = 0 ; $i < $self->get_rows() ; $i++ ) {
        print $self->get_row_text($i) . "\n";
    }
}

1;
