require 5.008;
use strict;
use warnings;

use File::Spec::Functions qw(catfile);

my $module    = 'Log::Log4perl::Appender::ScreenColoredLevels::UsingMyColors';
my $github    = 'https://github.com/briandfoy/Log-Log4perl-Appender-ScreenColoredLevels-UsingMyColors';
my $main_file = catfile( 'lib', split /::/, "$module.pm" );

my %WriteMakefile = (
	'NAME'	        => $module,
	'ABSTRACT_FROM' => $main_file,
	'VERSION_FROM'  => $main_file,
	'LICENSE'       => 'perl',
	'AUTHOR'        => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More'           => '0',
		'Log::Log4perl::Level' => '0',
		},

	clean  => { FILES    => q|Log-Log4perl-Appender-ScreenColoredLevels-UsingMyColors-*| },
	);

sub arguments { \%WriteMakefile }

do_it() unless caller;
sub do_it {
	require File::Spec;
	my $MM ='ExtUtils::MakeMaker';
	my $MM_version =
		eval{ "$MM " . $WriteMakefile{'CONFIGURE_REQUIRES'}{'ExtUtils::MakeMaker'} }
			//
		"$MM 6.64";
	eval "use $MM_version" || die "Could not load $MM_version: $@";
	eval "use Test::Manifest 1.21" 
		if -e File::Spec->catfile( qw(t test_manifest) );
	WriteMakefile( %WriteMakefile );
	}


no warnings;
__PACKAGE__;
