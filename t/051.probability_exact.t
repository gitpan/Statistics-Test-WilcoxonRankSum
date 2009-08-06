use lib 'lib';

use Test::More qw( no_plan );

use Data::Dumper;
use strict;
use English;

use Math::BigFloat;
use Statistics::Test::WilcoxonRankSum;

my $wilcox_test = Statistics::Test::WilcoxonRankSum->new();

my @dataset_1 = qw(45 50 61 63 75 85 93);
my @dataset_2 = qw(44 45 52 53 56 58 58 65 79);

$wilcox_test->load_data(\@dataset_1, \@dataset_2);

my $N = $wilcox_test->get_N();
my $MaxSum = $wilcox_test->get_max_rank_sum();

ok($N == 16, "Overall number of elements");
ok($MaxSum == 136, 'biggest possible rank sum');


my $prob = Math::BigFloat->new($wilcox_test->probability_exact());
my $expected = 0.2204;
ok(abs($prob - $expected) < 0.0001, 'exact probability');


1;

