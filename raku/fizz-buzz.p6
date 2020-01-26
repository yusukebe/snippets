for 1..100 -> $i {
    say to-fizz-buzz($i)
}

sub to-fizz-buzz (Int $n --> Str){
    my Str $s = '';
    given $n {
        when $n % 3 == 0 { $s ~= 'Fizz'; proceed }
        when $n % 5 == 0 { $s ~= 'Buzz'; proceed }
        when !$s.Bool { $s = ~$n }
    }
    return $s
}
