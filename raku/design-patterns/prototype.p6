class Product {
    method use( Str ) { ... }
}

class Manager {
    has %.showcase = Hash.new;

    method register(Str $name, Product $proto) {
        %.showcase{$name} = $proto;
    }
    method create(Str $protoname --> Product) {
        my $p = %.showcase{$protoname};
        return $p.clone;
    }
}

class UnderlinePen is Product {
    has Str $.ulchar;

    method new($ulchar) {
        self.bless(ulchar => $ulchar);
    }
    method use(Str $s) {
        my $length = $s.chars;
        say $s;
        loop (my $i = 0; $i < $length; $i++) {
            print self.ulchar;
        }
        say '';
    }
}

class MessageBox is Product {
    has Str $.decochar;

    method new($decochar) {
        self.bless(decochar => $decochar);
    }
    method hoge {
        say self.decochar;
    }
    method use(Str $s) {
        my $length = $s.chars;
        loop (my $i = 0; $i < $length + 2; $i++) {
            print self.decochar;
        }
        say '';
        say self.decochar ~ $s ~ self.decochar;
        loop (my $n = 0; $n < $length + 2; $n++) {
            print self.decochar;
        }
        say '';
    }
}

my $manager = Manager.new;
my $upen = UnderlinePen.new('~');
my $mbox = MessageBox.new('*');
my $pbox = MessageBox.new('+');
$manager.register('strong message', $upen);
$manager.register('warning box', $mbox);
$manager.register('slash box', $pbox);

my $p1 = $manager.create('strong message');
$p1.use('Hello World');
my $p2 = $manager.create('warning box');
$p2.use('Hello World');
my $p3 = $manager.create('slash box');
$p3.use('Hello World');
