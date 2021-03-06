package Protocol::TWS::Response::tickOptionComputation;

use strict;
use warnings;

use base 'Protocol::TWS::Response';


sub _id { 21 }

sub _meta {
    return (
        id         => {alias => 'tickerId'},
        tickType   => 'tickType',
        impliedVol => 'double',
        delta      => 'double',
        optPrice   => 'double',
        pvDividend => 'double',
        gamma      => 'double',
        vega       => 'double',
        theta      => 'double',
        undPrice   => 'double',
    );
}

sub _minimum_version { 6 }

1;

