class Book
attr_accessor :title

  def title
    non_cap = %w(the of an in a and or)

    book_title = @title.split(" ").map.with_index do |word, idx|
      if non_cap.include?(word) && idx == 0 || non_cap.include?(word) == false
        word.capitalize
      else
        word
      end
    end

  book_title.join(" ")
  end
end
