suggests                "CGI::Application";
suggests                "Redis";

requires                "Digest::SHA" => '5.60'; # last update on sha512
build_requires          "ExtUtils::MakeMaker" => '6.64';

test_requires           "CGI::Application";
test_requires           "Test::Mock::Redis";
test_requires           "Test::More";
test_requires           "Test::Time";
test_requires           "Test::WWW::Mechanize::CGIApp";

author_requires         "File::Find";
author_requires         "Test::CheckManifest";
author_requires         "Test::NoTabs";
author_requires         "Test::Pod";
author_requires         "Test::Strict";
