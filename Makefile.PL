
use strict;
use warnings;

use 5.010000;

use ExtUtils::MakeMaker 6.17;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Add Dist::Zilla authordeps to META files as develop prereqs",
  "AUTHOR" => "David Golden <dagolden\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.17"
  },
  "DISTNAME" => "Dist-Zilla-Plugin-Prereqs-AuthorDeps",
  "EXE_FILES" => [],
  "LICENSE" => "apache",
  "NAME" => "Dist::Zilla::Plugin::Prereqs::AuthorDeps",
  "PREREQ_PM" => {
    "Dist::Zilla" => 4,
    "Dist::Zilla::Role::PrereqSource" => 0,
    "Dist::Zilla::Util::AuthorDeps" => 0,
    "Moose" => 0,
    "MooseX::Types::Moose" => 0,
    "Path::Class" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "CPAN::Meta" => 0,
    "Dist::Zilla::Tester" => 0,
    "ExtUtils::MakeMaker" => 0,
    "File::Spec::Functions" => 0,
    "List::Util" => 0,
    "Path::Tiny" => 0,
    "Test::More" => "0.96"
  },
  "VERSION" => "0.002",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "CPAN::Meta" => 0,
  "Dist::Zilla" => 4,
  "Dist::Zilla::Role::PrereqSource" => 0,
  "Dist::Zilla::Tester" => 0,
  "Dist::Zilla::Util::AuthorDeps" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec::Functions" => 0,
  "List::Util" => 0,
  "Moose" => 0,
  "MooseX::Types::Moose" => 0,
  "Path::Class" => 0,
  "Path::Tiny" => 0,
  "Test::More" => "0.96",
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



