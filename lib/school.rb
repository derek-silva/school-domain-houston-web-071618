require 'pry'


class School

attr_reader :school, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    if @roster.keys.include?(grade)
      @roster[grade]
    end
  end

  def sort
    return_value = {}
    @roster.each do |grade, students|
      return_value[grade] = students.sort
    end
    return_value
  end

end
