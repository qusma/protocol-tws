package Protocol::TWS::Request::reqManagedAccts;

use strict;
use warnings;

use base 'Protocol::TWS::Request';


sub _id { 17 }

sub _meta {}

sub _response {
    return (
        managedAccounts => 'single',
    );
}

1;

