# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser

  attr_accessor :email

  def initialize(string)
    @email = string
  end

  def parse
    @email.split(", ").collect {|word| word.split(",") }.flatten.collect {|w| w.split}.flatten.uniq
  end

end
