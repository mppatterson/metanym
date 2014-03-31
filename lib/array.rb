
class Array
  # Remove items that have more than one word.
  def single_word_items
    self.reject{|item| item.match(/ /) } 
  end
end
