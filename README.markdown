Reorganise
=============

Reorganise is a Ruby Gem that simplifies the tedious task of renaming and organising your TV series.

###Installation
1. Ensure Ruby is installed. The latest Windows version is available at [RubyInstaller.org](http://rubyinstaller.org/downloads/).
2. Ruby now comes standard with Rubygems, so simply run:
	gem install reorganise
3. That's it!

###How to use Reorganise
Reorganise is run from the command line. One you have installed the gem, open up your command prompt (Start -> Run -> cmd) in Windows or Terminal in Linux. Typing:

		reorganise -h
	
will present you with the following options:
	Usage: reorganise [options]

	Command options:
    	-i, --input-dir DIRECTORY        Specifies where to look for episodes to rename.
    	-o, --output-dir DIRECTORY       Specifies where to move renamed files to. Default is the input directory.
    	-n, --name NAME                  What to rename the series to. Title is derived from series if not given.
    	-c, --confirm                    Confirms the go ahead to rename files. Only pretends to rename files to show the effects if not given.
		-r, --regexp MATCHER             Alternative regexp matcher.
    	-v, --verbose                    Verbose output. Automatically selected for pretend runs.
    	-h, --help                       Display this to screen.

###Examples

#### NOTE: To confirm and actually proceed with the renaming in these and any other examples, supply the `-c` or `--confirm` option.

The following example is a simple renaming of a series. We do not want to move the files to another directory, so no -o argument is supplied. Note, no confirm option (-c) was supplied, so this example would only show what WOULD happen if it was supplied. This is useful as it allows the user to note if something were to go amiss.

		C:\>reorganise -i "E:\Media\Series\Breaking Bad"

Results in
		
		------------------------------------------------------------------------
		Finding all files with the following extensions: avi, mp4, mkv
		
		Directory: E:/Media/Series/Breaking Bad
		Found 11 files.
		------------------------------------------------------------------------

		!!! NOTICE: This is a PRETEND renaming to show what would happen. !!!
		To confirm the renaming of files, run the command again with -c. e.g. `reorganis
		e -c -i [input-dir]

		Starting to rename files using regex (?i-mx:S(\d+)x?E(\d+)|(\d{1,2})(\d{2,})|(\d+)x(\d+))...

		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x01] - Pilot.mkv
		+: E:/Media/Series/Breaking Bad/Season 1/Breaking Bad - S01E01.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x02] - Cat's in the Bag....mkv
		+: E:/Media/Series/Breaking Bad/Season 1/Breaking Bad - S01E02.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x03] - ...And the Bag's in the River.mkv
		+: E:/Media/Series/Breaking Bad/Season 1/Breaking Bad - S01E03.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x04] - Cancer Man.mkv
		+: E:/Media/Series/Breaking Bad/Season 1/Breaking Bad - S01E04.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x05] - Gray Matter.mkv
		+: E:/Media/Series/Breaking Bad/Season 1/Breaking Bad - S01E05.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x06] - Crazy Handful of Nothin'.mkv
		+: E:/Media/Series/Breaking Bad/Season 1/Breaking Bad - S01E06.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x07] - ANo-Rough-Stuff Type Deal.mkv
		+: E:/Media/Series/Breaking Bad/Season 1/Breaking Bad - S01E07.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 2/Breaking Bad - [2x01] - Seven Thirty-Seven.mkv
		+: E:/Media/Series/Breaking Bad/Season 2/Breaking Bad - S02E01.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 2/Breaking Bad - [2x02] - Grilled.mkv
		+: E:/Media/Series/Breaking Bad/Season 2/Breaking Bad - S02E02.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 2/Breaking Bad - [2x03] - Bit by a Dead Bee.mkv
		+: E:/Media/Series/Breaking Bad/Season 2/Breaking Bad - S02E03.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 2/Breaking Bad - [2x04] - Down.mkv
		+: E:/Media/Series/Breaking Bad/Season 2/Breaking Bad - S02E04.mkv

		Finished renaming 11 files.

		!!! NOTICE: This was a pretend run, nothing was renamed. !!!
		To confirm the renaming, run this command again with -c

		
Supplying the name argument (-n [series name]) does a custom rename. This is useful for those who are fussy about their naming methods with shows like QI and CSI which, without the name option, would result in Qi and Csi respectively. **Please note, this log file has been shortened for the sake of reducing excessive scrolling. No files were skipped because of the additional option.**

		C:\>reorganise -i "E:\Media\Series\Breaking Bad" -n "BB"

Results in

		------------------------------------------------------------------------
		Finding all files with the following extensions: avi, mp4, mkv
		
		Directory: E:/Media/Series/Breaking Bad
		Found 11 files.
		------------------------------------------------------------------------

		!!! NOTICE: This is a PRETEND renaming to show what would happen. !!!
		To confirm the renaming of files, run the command again with -c. e.g. `reorganis
		e -c -i [input-dir]

		Starting to rename files using regex (?i-mx:S(\d+)x?E(\d+)|(\d{1,2})(\d{2,})|(\d+)x(\d+))...

		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x01] - Pilot.mkv
		+: E:/Media/Series/Breaking Bad/Season 1/BB - S01E01.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x02] - Cat's in the Bag....mkv
		+: E:/Media/Series/Breaking Bad/Season 1/BB - S01E02.mkv
		...
		...
		
#### Outputting to another directory

		C:\>reorganise -i "E:\Media\Series\Breaking Bad" -o C:\

Results in

		------------------------------------------------------------------------
		Finding all files with the following extensions: avi, mp4, mkv
		
		Directory: E:/Media/Series/Breaking Bad
		Found 11 files.
		------------------------------------------------------------------------

		!!! NOTICE: This is a PRETEND renaming to show what would happen. !!!
		To confirm the renaming of files, run the command again with -c. e.g. `reorganis
		e -c -i [input-dir]

		Starting to rename files using regex (?i-mx:S(\d+)x?E(\d+)|(\d{1,2})(\d{2,})|(\d+)x(\d+))...

		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x01] - Pilot.mkv
		+: C:/Breaking Bad/Season 1/Breaking Bad - S01E01.mkv
		-: E:/Media/Series/Breaking Bad/Breaking Bad Season 1/Breaking Bad - [1x02] - Cat's in the Bag....mkv
		+: C:/Breaking Bad/Season 1/Breaking Bad - S01E02.mkv
		...
		...
		
		
## Credits
	Author: Justin Cossutti
