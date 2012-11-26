
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Scalar::Util" => 0,
    "Test::More" => "0.94"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Organize your movies using imdb",
  "dist_author" => [
    "celogeek <me\@celogeek.com>"
  ],
  "dist_name" => "Movies-Organizer",
  "dist_version" => "0.9",
  "license" => "perl",
  "module_name" => "Movies::Organizer",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Data::Dumper" => 0,
    "File::Copy" => 0,
    "File::Glob" => 0,
    "File::Path" => "2.08",
    "File::Spec" => 0,
    "IMDB::Film" => 0,
    "Moo" => 0,
    "MooX::Options" => 0,
    "Term::ReadLine" => 0,
    "Term::ReadLine::Perl" => 0,
    "perl" => "5.010",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [
    "bin/movies_organizer"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
