Metanym
=======

Search thesaurus.com for Synonyms

Installation
============

	gem 'metanym', git: 'https://github.com/mppatterson/metanym.git'

Usage
=====

	require 'metanym'

	query = Metanym.new 'hello'
	p query.synonyms #=> ["bonjour", "buenas noches", "buenos dias", ...]

Disclaimer
======
I am not responsible for your usage of this gem.  Be respectful of thesaurus.com and be mindful of the number of requests made against their site.  Use at your own risk.
