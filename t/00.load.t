use Test::More tests => 3;  # -*- mode: cperl -*-

use lib qw(../lib lib ); # Test in-place

BEGIN {
use_ok( 'Web::SIVA' );
}

my $siva_provincia = new Web::SIVA "gr"; # two-letter acronym for provinces in Andalucía
is( ref $siva_provincia, "Web::SIVA", "Object OK" );
my $data_yesterday = $siva_provincia->day( 4, 3, 2017, "2017-03-04" ); # As in March 4th, 2017
is ( $data_yesterday->[574]{'CO'}, 146, "Data OK");

diag( "Testing Web::SIVA $Web::SIVA::VERSION" );
