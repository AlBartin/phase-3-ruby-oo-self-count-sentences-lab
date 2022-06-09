require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/'.'&&'!'&&'?'/).count
  end
end

class String
  def count_sentences
    self.split(/[.!?]/).select{|value| value != ""}.count
  end
end
# "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
# "hey this is crazy. But I just met you! Here's my number, so call me maybe?".count_sentences