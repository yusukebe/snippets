package Factory::Page;
use Moose::Role;
use Factory::Item;

has 'title' => (
    is  => 'ro',
    isa => 'Str',
);

has 'content' => (
    traits  => ['Array'],
    is      => 'ro',
    isa     => 'ArrayRef[Factory::Item]',
    default => sub { [] },
    handles => {
        add => 'push',
    },
);

requires 'make_html';

sub output {
    my $self = shift;
    printf( "%s\n", $self->make_html() );
}

1;
