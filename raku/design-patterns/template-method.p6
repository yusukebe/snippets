role Monser {
    has Str $.name;
    # Stubs
    method get-attack( --> Int ) { ... }
    method get-defence( --> Int ) { ... }
    method show-info {
        say '名前: ' ~ self.name;
        say '攻撃力: ' ~ self.get-attack;
        say '守備力: ' ~ self.get-defence;
    }
}

class Slime does Monser {
    method get-attack( --> Int )  {
        return 15;
    }
    method get-defence( --> Int ) {
        return 10;
    }
}

class Dragon does Monser {
    method get-attack( --> Int )  {
        return 60;
    }
    method get-defence( --> Int ) {
        return 45;
    }
}

my $slime = Slime.new( name => 'スライムくん' );
my $dragon = Dragon.new( name => 'ドラゴンさん' );

$slime.show-info;
$dragon.show-info;
