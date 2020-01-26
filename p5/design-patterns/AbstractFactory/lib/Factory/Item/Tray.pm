package Factory::Item::Tray;
use Moose::Role;
use Factory::Item;

has 'tray' => (
    traits  => ['Array'],
    is      => 'ro',
    isa     => 'ArrayRef[Factory::Item]',
    default => sub { [] },
    handles => {
        add => 'push',
    },
);

1;
