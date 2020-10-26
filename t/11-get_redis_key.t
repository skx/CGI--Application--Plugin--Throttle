use Test::More;

use strict;
use warnings;

use CGI::Application::Plugin::Throttle;

$ENV{ REMOTE_ADDR } = '192.169.0.1';
$ENV{ REMOTE_USER } = 'Test User';
$ENV{ HTTP_USER_AGENT } = 'TAP';

my $mock_cgi = {};
my $throttle = throttle($mock_cgi);
$throttle->configure( prefix => 'Mocked CGI' ) ;

my $key = $throttle->_get_key;

is( $key, "Mocked CGI:Test User:192.169.0.1:TAP", "Default key as string");

done_testing();

