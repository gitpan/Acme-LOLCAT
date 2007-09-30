use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Acme::LOLCAT',
    AUTHOR              => 'Kent Cowgill <kent@c2group.net>',
    VERSION_FROM        => 'lib/Acme/LOLCAT.pm',
    ABSTRACT_FROM       => 'lib/Acme/LOLCAT.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Acme-LOLCAT-*' },
);
