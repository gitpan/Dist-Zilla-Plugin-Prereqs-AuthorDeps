use 5.006;
use strict;
use warnings;
use Test::More 0.96;

use Dist::Zilla::Tester;
use Path::Tiny;
use CPAN::Meta;

require Dist::Zilla; # for VERSION

my $root       = 'corpus/DZ';
my $dz_version = int( Dist::Zilla->VERSION );

{
    my $tzil = Dist::Zilla::Tester->from_config( { dist_root => $root }, );
    ok( $tzil, "created test dist" );

    $tzil->build_in;
    my $build_dir = path( $tzil->tempdir->subdir('build') );

    my $meta    = CPAN::Meta->load_file( $build_dir->child("META.json") );
    my $prereqs = $meta->effective_prereqs;

    my $expected = {
        'Devel::Foo'                               => 0.123,
        'Dist::Zilla'                              => $dz_version,
        'Dist::Zilla::PluginBundle::Basic'         => 4,
        'Dist::Zilla::Plugin::AutoPrereqs'         => 0,
        'Dist::Zilla::Plugin::MetaJSON'            => 0,
        'Dist::Zilla::Plugin::Prereqs::AuthorDeps' => 0,
        # removed: Dist::Zilla::Plugin::RemovePrereqs
    };

    is_deeply( $prereqs->requirements_for(qw/develop requires/)->as_string_hash,
        $expected, "develop requires" );
}

done_testing;
#
# This file is part of Dist-Zilla-Plugin-Prereqs-AuthorDeps
#
# This software is Copyright (c) 2013 by David Golden.
#
# This is free software, licensed under:
#
#   The Apache License, Version 2.0, January 2004
#
