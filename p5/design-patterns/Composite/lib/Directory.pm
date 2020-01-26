package Directory;
use Moose;

with 'Entry';

has 'directory' => (
    traits  => ['Array'],
    is      => 'ro',
    isa     => 'ArrayRef[Entry]',
    default => sub { [] },
    handles => {
        add_directory => 'push',
    },
);

sub add {
    my ( $self, $entry ) = @_;
    $self->add_directory($entry);
}

sub print_list {
    my ( $self, $prefix ) = @_;
    $prefix ||= '';
    printf( "%s/%s\n", $prefix, $self->name );
    for my $entry ( @{ $self->directory } ) {
        $entry->print_list( sprintf( "%s/%s", $prefix, $self->name ) );
    }
}

__PACKAGE__->meta->make_immutable();
