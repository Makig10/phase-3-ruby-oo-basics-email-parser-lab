# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split(/[, ]+/).uniq
  end

  private
  attr_reader :emails
end

email_parser = EmailAddressParser.new("avi@test.com, arel@test.com")
puts email_parser.parse 