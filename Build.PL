use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WebService::Megaplan',
    # license             => 'Artistic_2_0',
    license             => 'artistic_2',
    dist_author         => q{Sergey Leschenko <sergle.ua@gmail.com>},
    dist_version_from   => 'lib/WebService/Megaplan.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    add_to_cleanup     => [ 'WebService-Megaplan-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
