package HumanAdaptor;
use Moose;
use Human;

with 'Student';

has 'human' => (
    is  => 'ro',
    isa => 'Human',
);

around BUILDARGS => sub {
    my $orig   = shift;
    my $class  = shift;
    my $human = Human->new(@_);
    $class->$orig( human => $human );
};

sub show_name {
    my $self = shift;
    $self->human->print_name;
}

sub show_age {
    my $self = shift;
    $self->human->print_age;
}

__PACKAGE__->meta->make_immutable();
