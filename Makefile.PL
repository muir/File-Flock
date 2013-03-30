
use ExtUtils::MakeMaker;

WriteMakefile( 
	'VERSION_FROM'	=> 'lib/File/Flock.pm',
	'NAME'		=> 'File::Flock',
	'dist'		=> { COMPRESS=>"gzip", SUFFIX=>"gz" },
	($] >= 5.005 
		?	
			(
				ABSTRACT	=> 'Wrapper for flock() to make file locking trivial',
				AUTHOR		=> 'David Muir Sharnoff <cpan@dave.sharnoff.org>',
				META_MERGE     => {
					resources  => {
						repository => 'http://github.com/muir/File-Flock',
					},
				},
			) 
		: ()
	),
	'PREREQ_PM'	=> {
		'Time::HiRes'	=> 0,
		'IO::Event'	=> 0.808,
		'AnyEvent'	=> 0,
		'Data::Structure::Util' => 0,
	},
	'BUILD_REQUIRES' => {
		'File::Slurp'	=> 0,
		'Time::HiRes'	=> 0,
	},
);

