Metanym
=======

Search thesaurus.com for Synonyms

Installation
============

	gem 'metanym', git: 'https://github.com/mppatterson/metanym.git'

Usage
=====

	require 'metanym'

	query = Metanym.new 'fish'
	
	# Show all synonyms
	puts query.synonyms # ["troll", "trawl", "angle", "chum", ...]
	
	# Show only single-word synonyms
	puts query.synonyms.single_word_items # ["troll", "trawl", "angle", "chum", ...]
	
	# Show related words
	puts query.related # ["meat", "prey", "quarry", ...]
	
Disclaimer
======
I am not responsible for your usage of this gem.  Be respectful of thesaurus.com and be mindful of the number of requests made against their site.  Use at your own risk.
