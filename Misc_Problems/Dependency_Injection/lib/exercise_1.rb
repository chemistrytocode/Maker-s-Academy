class Note

  attr_reader :title, :body

  def initialize(title, body, format = NoteFormatter)
    @title = title
    @body = body
    @formatter = format.new
  end

  def format
    @formatter.format(title, body)
  end


end

class NoteFormatter

  def format(title, body)
    "Title: #{title}\n#{body}"
  end
end
