class Candidate
  attr_reader :years_of_experience, :github_points, :languages_worked_with, :age

  def initialize(years_of_experience, github_points, languages_worked_with, applied_recently, age)
    @years_of_experience = years_of_experience
    @github_points = github_points
    @languages_worked_with = languages_worked_with
    @applied_recently = applied_recently
    @age = age
  end

  def applied_recently?
    return @applied_recently
  end

  def is_an_experienced_programmer?
    return (@years_of_experience >= 2 || @github_points >= 500) &&
        @languages_worked_with.include?('Ruby') &&
        @age >= 15 && !self.applied_recently?
  end

end