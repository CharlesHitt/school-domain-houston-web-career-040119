# code here!
require 'pry'
class School

    attr_accessor :name, :roster
# binding.pry
    def initialize(name)
        # binding.pry
        @name = name
        @roster = {}
    end
    
    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end