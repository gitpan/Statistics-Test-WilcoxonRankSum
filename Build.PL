use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Statistics::WilcoxonRankSum',
    license             => 'perl',
    dist_author         => 'Ingrid Falk <ingrid dot falk at loria dot fr>',
    dist_version_from   => 'lib/Statistics/WilcoxonRankSum.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Statistics-WilcoxonRankSum-*' ],
);

$builder->create_build_script();
