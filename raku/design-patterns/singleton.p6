class Singleton {
    my Singleton $instance = Singleton.new;
    method BUILD {
        say "インスタンスを生成します。";
    }
    method get-instance {
        return $instance;
    }
}

my $obj1 = Singleton.get-instance;
my $obj2 = Singleton.get-instance;

if $obj1 === $obj2 {
    say '$obj1と$obj2は同じインスタンスです。';
} else {
    say '$obj1と$obj2は同じインスタンスではありません。';
}
