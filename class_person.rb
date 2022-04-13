# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate
require "date"

class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def full_name
    n = self.first_name + " " + self.last_name
    return n
  end

  def age
    date = Date.today
    birthdate_year = self.birthdate.split(" ")
    age = (date.year - birthdate_year[-1].to_i).to_i
    return age
  end
end
