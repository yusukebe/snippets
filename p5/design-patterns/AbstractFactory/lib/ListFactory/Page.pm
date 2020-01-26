package ListFactory::Page;
use Moose;

with 'Factory::Page';

sub make_html {
    my $self = shift;
    my $html = sprintf( "<html><head><title>%s</title></head>\n", $self->title );
    $html .= "<body>\n";
    $html .= sprintf( "<title>%s</title>\n", $self->title );
    $html .= "<ul>\n";
    for my $item ( @{$self->content} ) {
        $html .= $item->make_html();
    }
    $html .= "</ul>\n";
    $html .= "</body></html>";
    return $html;
}

__PACKAGE__->meta->make_immutable();
