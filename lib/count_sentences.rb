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
    self.split(/\.+\s*|\?+\s*|!+\s*/).length
    # binding.pry
  end
end

"The weather outside is frightful.".sentence?
# true
"But the fire is so delightful".sentence?
# false

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences