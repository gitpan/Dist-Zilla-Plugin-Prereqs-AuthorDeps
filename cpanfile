requires "Dist::Zilla" => "4";
requires "Dist::Zilla::Role::PrereqSource" => "0";
requires "Dist::Zilla::Util::AuthorDeps" => "5.021";
requires "Moose" => "0";
requires "MooseX::Types::Moose" => "0";
requires "perl" => "v5.10.0";
requires "strict" => "0";
requires "warnings" => "0";

on 'test' => sub {
  requires "CPAN::Meta" => "0";
  requires "Dist::Zilla::Tester" => "0";
  requires "ExtUtils::MakeMaker" => "0";
  requires "File::Spec" => "0";
  requires "Path::Tiny" => "0";
  requires "Test::DZil" => "0";
  requires "Test::Deep" => "0";
  requires "Test::Deep::JSON" => "0";
  requires "Test::More" => "0.96";
  requires "perl" => "v5.10.0";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "6.17";
  requires "perl" => "v5.10.0";
};

on 'develop' => sub {
  requires "Dist::Zilla" => "5";
  requires "Dist::Zilla::PluginBundle::DAGOLDEN" => "0.072";
  requires "File::Spec" => "0";
  requires "File::Temp" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Test::CPAN::Meta" => "0";
  requires "Test::More" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
  requires "Test::Spelling" => "0.12";
};
