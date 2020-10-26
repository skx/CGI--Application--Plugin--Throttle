use Test::More;

use strict;
use warnings;

use CGI::Application::Plugin::Throttle;

my $mock_cgi = bless {}, 'MyCGI';
my $throttle = throttle($mock_cgi);

my $rule = $throttle->_get_throttle_rule();

is_deeply( $rule => {
        limit     => 100,
        period    => 60,
        exceeded  => "slow_down"
    },
    "Default rules"
);

done_testing();


package MyCGI;

1;
