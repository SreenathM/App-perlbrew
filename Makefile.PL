use inc::Module::Install;

license 'mit';

all_from 'lib/App/perlbrew.pm';

repository 'git://github.com/gugod/App-perlbrew.git';

requires
    'Pod::Parser'          => '1.61',
    'Pod::Usage'           => '1.63',
    'Devel::PatchPerl'     => '1.00',
    'local::lib'           => '1.008026',
    'Capture::Tiny'        => '0.22',
    'CPAN::Perl::Releases' => '1.26';

test_requires
    'Test::Simple'     => '0.98',
    'Test::More'       => '0',
    'Test::Output'     => '0.04', # stdout_like added in 0.04
    'Test::Exception'  => '0',
    'Test::NoWarnings' => '0',
    'Test::Spec'       => '0.46', # with() added in 0.46
    'Path::Class'      => '0',
    'IO::All'          => '0.46',
    'File::Temp'       => '0';

install_script 'bin/perlbrew';

tests 't/*.t';

makemaker_args(
    dist => {
        COMPRESS => "zopfli -i50",
    }
);

WriteAll;
