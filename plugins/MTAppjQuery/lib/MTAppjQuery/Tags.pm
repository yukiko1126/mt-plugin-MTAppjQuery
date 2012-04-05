package MTAppjQuery::Tags;
use strict;

# Modifiers
sub _fltr_split_format {
    my ($str, $arg, $ctx) = @_;

    unless ($str) {
        return '';
    }
    # $arg = '%1 %2'
    my @array = split(/,/, $str);
    for (my $i = 1; $i <= scalar(@array); $i++) {
        my $pattern = '%'.$i;
        $arg =~ s/$pattern/$array[$i-1]/g;
    }
    $arg =~ s/%\d+//g;
    return $arg;
}

1;