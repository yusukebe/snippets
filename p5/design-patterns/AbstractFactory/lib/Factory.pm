package Factory;
use Moose::Role;

requires 'create_link';
requires 'create_tray';
requires 'create_page';

sub get_factory {
    my ( $self, $class ) = @_;
    ( my $file = "$class.pm" ) =~ s!::!/!g;
    eval { require $file; };
    die "Die: $@" if $@;
    my $factory = $class->new;
    return $factory;
}

1;
