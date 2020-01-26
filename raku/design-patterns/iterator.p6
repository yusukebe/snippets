my $students = Array.new;
$students.append('Tanaka');
$students.append('Yamada');
$students.append('Suzuki');
$students.append('Sato');

my $iterator = $students.iterator;
loop {
    my $student := $iterator.pull-one;
    last if $student =:= IterationEnd;
    say $student;
}
