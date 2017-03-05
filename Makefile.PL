use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Web::SIVA',
    AUTHOR              => 'JJ <JMERELO@cpan.org>',
    VERSION_FROM        => 'lib/Web/SIVA.pm',
    ABSTRACT_FROM       => 'lib/Web/SIVA.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
	    'version'    => 0,
	    'Mojolicious' => 7.13,
	    'LWP::Simple' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Web-SIVA-*' },
);
