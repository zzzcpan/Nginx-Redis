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

    (eval $ExtUtils::MakeMaker::VERSION >= 6.46
         ? ( 'META_MERGE' => { 
                 'no_index' => { 
                     'directory' => ['eg'] 
                 } 
             } ) : ()),

);

