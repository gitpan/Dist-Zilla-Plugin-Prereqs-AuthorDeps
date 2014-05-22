use strict;
use warnings;
use Test::More;

# generated by Dist::Zilla::Plugin::Test::PodSpelling 2.006007
use Test::Spelling 0.12;
use Pod::Wordlist;


add_stopwords(<DATA>);
all_pod_files_spelling_ok( qw( bin lib  ) );
__DATA__
authordeps
David
Golden
dagolden
Karen
Etheridge
ether
lib
Dist
Zilla
Plugin
Prereqs
AuthorDeps