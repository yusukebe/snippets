package ListFactory::Item::Link;
use Moose;

with qw/Factory::Item Factory::Item::Link/;

sub make_html {
    my $self = shift;
    return sprintf(
        "<li><a href=\"%s\">%s</a></li>\n",
        $self->url,
        $self->caption
    );
}

__PACKAGE__->meta->make_immutable();
