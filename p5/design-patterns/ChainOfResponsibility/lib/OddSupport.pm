package OddSupport;
use Moo;
use strictures 2;
use namespace::clean;
use Function::Parameters;

with 'Support';

method resolve($trouble) {
    return $trouble->number % 2 == 1;
}

1;
