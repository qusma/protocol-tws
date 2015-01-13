package Protocol::TWS::Request::reqRealTimeBars;

use strict;
use warnings;

use base 'Protocol::TWS::Request';


sub _id { 50 }

sub _meta {
    return (
        id                  => {alias => 'tickerId'},
        contract            => 'Contract',
        barSize             => 'int',
        whatToShow          => {},
        useRTH              => 'bool',
        realTimeBarsOptions => {},
    );
}

sub _response {
    return (
        realTimeBar => 'cont',
    );
}

sub _version { 3 }

sub _serialize {
    my ($self) = @_;

    my $contract = $self->contract;

    my @out = (
        $self->_id,
        $self->_version,
        $self->id,
        $contract->conId           || '',
        $contract->symbol          || '',
        $contract->secType         || '',
        $contract->expiry          || '',
        $contract->strike          || '',
        $contract->right           || '',
        $contract->multiplier      || '',
        $contract->exchange        || '',
        $contract->primaryExchange || '',
        $contract->currency        || '',
        $contract->localSymbol     || '',
        $contract->tradingClass    || '',
        $self->barSize             || '',
        $self->whatToShow          || '',
        $self->useRTH              || '',
        $self->realTimeBarsOptions || '',
    );

    return @out;
}


1;

