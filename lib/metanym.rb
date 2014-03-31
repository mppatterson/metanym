require 'excon'
require 'nokogiri'

class Metanym
  VERSION = "0.1.0"
  URL = "http://thesaurus.com/browse/"

  def initialize(query)
    @url = URI.encode(URL + query)
  end

  def synonyms
    @synonyms ||= items_at 'synonyms'
  end

  def antonyms
    raise "Antonyms are currently deprecated."
  end

  def definition
    raise "Definition is currently deprecated."
  end

  def items_at(css_class)
    doc.css(".#{css_class} span.text").map do |node|
      node.children.text.squish
    end
  end

  def doc
    @doc ||= Nokogiri.HTML source
  end

  def source
    Excon.get(@url, :method => 'GET', :expects => 200, :headers => {"User-Agent" => "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"}).body
  end 

end
