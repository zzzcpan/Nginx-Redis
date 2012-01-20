#!/usr/bin/perl

use ExtUtils::MakeMaker;

WriteMakefile(
    dist => {
        COMPRESS => 'gzip -9v',
        SUFFIX   => '.gz',
    },

    NAME          => 'Nginx::Redis',
    VERSION_FROM  => 'lib/Nginx/Redis.pm',
    ABSTRACT_FROM => 'lib/Nginx/Redis.pm',
    AUTHOR        => 'Alexandr Gomoliako <zzz@zzz.org.ua>',

    PREREQ_PM => {
        'Redis::Parser::XS' => 0,
        'Nginx::Perl'       => 0,
    },

);

