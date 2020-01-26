package Guide;
use Moose;
use Builder;

has 'builder' => (
    is => 'ro',
    isa => 'Builder',
);

sub construct {
    my $self = shift;
    $self->builder->make_title('About BBQ');
    $self->builder->make_string('Date');
    $self->builder->make_items(['2019/2/28', '11:00']);
    $self->builder->make_string('Place');
    $self->builder->make_items(['Tamagawa']);
    $self->builder->make_string('What to bring');
    $self->builder->make_items(['Towel', 'Meat', 'Drink', 'etc.']);
    $self->builder->close;
}

__PACKAGE__->meta->make_immutable();
