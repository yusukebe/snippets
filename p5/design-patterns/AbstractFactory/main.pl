use strict;
use warnings;
use lib 'lib';
use Factory;

my $factory = Factory->get_factory('ListFactory');

my $qiita = $factory->create_link('Qiita', 'https://qiita.com//');
my $dot = $factory->create_link('Dot Install', 'https://dotinstall.com/');

my $yahoo = $factory->create_link('Yahoo!Japan', 'http://www.yahoo.co.jp/');
my $excite = $factory->create_link('Excite', 'http://www.excite.com/');
my $google = $factory->create_link('Google', 'http://www.google.com/');

my $programming_tray = $factory->create_tray('Programming');
$programming_tray->add($qiita);
$programming_tray->add($dot);

my $search_tray = $factory->create_tray('Search');
$search_tray->add($yahoo);
$search_tray->add($excite);
$search_tray->add($google);

my $page = $factory->create_page('Favorite');
$page->add($programming_tray);
$page->add($search_tray);
$page->output();
