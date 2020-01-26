use strictures 2;
use lib 'lib';
use Trouble;
use NoSupport;
use LimitSupport;
use OddSupport;
use SpecialSupport;

my $alice = NoSupport->new( name => 'Alice' );
my $bob = LimitSupport->new( name => 'Bob', limit => 100 );
my $charlie = SpecialSupport->new( name => 'Charlie', number => 429 );
my $diana = LimitSupport->new( name => 'Diana', limit => 200 );
my $elmo = OddSupport->new( name => 'Elmo' );

$alice->next($bob)->next($charlie)->next($diana)->next($elmo);

for ( my $i = 0 ; $i < 500 ; $i += 33 ) {
    $alice->support( Trouble->new( number => $i ) );
}
