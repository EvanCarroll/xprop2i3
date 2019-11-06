use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'xprop2i3',
    AUTHOR           => q{Evan Carroll <me@evancarroll.com>},
    VERSION_FROM     => 'scripts/xprop2i3',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => '5.006',
    EXE_FILES => ['./scripts/xprop2i3'],
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '0',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'xprop2i3-*' },
META_MERGE        => {
  "meta-spec" => { version => 2 },
  resources => {
    repository => {
        type => 'git',
        url => 'git://github.com/EvanCarroll/xprop2i3.git',
        web => 'https://github.com/EvanCarroll/xprop2i3',
    },
  },
},

);
