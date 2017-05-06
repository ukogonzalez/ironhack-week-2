class Post

  attr_accessor :title, :date, :text

  def initialize
    @title = title
    @date = date
    @text = text
  end

  def title(title)
    @title = title
  end

  def date(date)
    @date = date
  end

  def text(text)
    @text = text
  end

end
