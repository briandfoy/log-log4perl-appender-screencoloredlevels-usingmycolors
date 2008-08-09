# $Id: Makefile.PL,v 1.4 2004/07/04 17:04:17 comdog Exp $
use ExtUtils::MakeMaker;

require 5.006;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'Log::Log4perl::Appender::ScreenColoredLevels::UsingMyColors',
	'ABSTRACT'     => 'Colorize messages according to level amd my colors',
	'VERSION_FROM' => 'lib/UsingMyColors.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More'           => '0',
		'Log::Log4perl::Level' => '0',
		},

	'PM'           => {
		'lib/UsingMyColors.pm'         => '$(INST_LIBDIR)/UsingMyColors.pm',
		},

	'MAN3PODS'     => {
		'lib/UsingMyColors.pm' => '$(INST_MAN3DIR)/Log::Log4perl::Appender::ScreenColoredLevels::UsingMyColors.3',
		},

	clean  => { FILES    => q|Log-Log4perl-Appender-ScreenColoredLevels-UsingMyColors-*| },

	);
