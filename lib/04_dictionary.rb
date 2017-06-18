class Dictionary
  attr_accessor :entries

  def initialize(option = {})
    @entries = option
  end

  def add(input)
    @entries.merge!(input) if input.class == Hash
    @entries[input] = nil if input.class == String
  end

  def keywords
    @entries.keys.sort
  end

  def include?(input)
    keywords.include?(input)
  end

  def find(input)
    @entries.select {|k, v| k.include?(input)}
  end

  def printable
    result = ""
    keywords.each_with_index do |word, idx|
      if idx == keywords.length-1
        result << "[#{word}] \"#{@entries[word]}\""
      else
        result << "[#{word}] \"#{@entries[word]}\"\n"
      end
    end
    result
  end
end
