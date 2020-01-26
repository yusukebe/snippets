use strict;
use warnings;
use feature qw/say/;
use lib 'lib';
use Builder::TextBuilder;
use Builder::HTMLBuilder;
use Guide;

my $format = $ARGV[0] or die;

if ( $format eq 'plain' ) {
    my $text_builder = Builder::TextBuilder->new();
    my $guide = Guide->new( builder => $text_builder );
    $guide->construct();
    my $result = $text_builder->get_result();
    say $result;
} elsif ( $format eq 'html' ) {
    my $html_builder = Builder::HTMLBuilder->new();
    my $guide = Guide->new( builder => $html_builder );
    $guide->construct();
    my $result = $html_builder->get_result;
    say $result;
} else {
    die;
}
