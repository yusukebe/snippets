package Visitor::List;
use Moose;

with 'Visitor';

has 'current_dir' => (
    is  => 'rw',
    isa => 'Str',
    default => sub { '' },
);

sub visit {
    my ($self, $entity) = @_;
    if (ref $entity eq 'Entity::File') {
        $self->visit_file($entity);
    }elsif(ref $entity eq 'Entity::Directory') {
        $self->visit_dir($entity);
    }
}

sub visit_file {
    my ( $self, $file ) = @_;
    printf("%s/%s\n",  $self->current_dir, $file->get_name() );
}

sub visit_dir {
    my ( $self, $dir ) = @_;
    printf( "%s/%s\n", $self->current_dir, $dir->get_name() );
    my $save_dir = $self->current_dir;
    $self->current_dir( $self->current_dir . '/' . $dir->get_name() );
    for my $entry ( @{ $dir->get_entries() } ) {
        $entry->accept($self);
    }
    $self->current_dir($save_dir);
}

__PACKAGE__->meta->make_immutable();
