require 'pry'
class EmailParser
  attr_accessor :email

  def initialize(email_new)
    @email = email_new
  end
 
  def parse
    @email.delete(",").split.uniq
  end
  # first error - need to delete the comma
  # got: ["avi@test.com,", "arel@test.com"]

  #second error - need to remove duplicate emails
  # got: ["avi@test.com", "avi@test.com"]
  #USE UNIQ!

end

# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
