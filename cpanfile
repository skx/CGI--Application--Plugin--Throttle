suggests                "CGI::Application";
suggests                "Redis";

requires                "Digest::SHA" => '5.60'; # last update on sha512
build_requires          "ExtUtils::MakeMaker" => '6.64';

test_requires           "Test::More";

author_requires         "File::Find";
author_requires         "Test::CheckManifest";
author_requires         "Test::NoTabs";
author_requires         "Test::Pod";
author_requires         "Test::Strict";
