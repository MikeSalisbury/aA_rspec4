class Friend
  def greeting(arg = nil)
    if arg
      "Hello, #{arg}!"
    else
      "Hello!"
    end
  end
end
