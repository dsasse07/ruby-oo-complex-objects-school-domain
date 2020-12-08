# code here!

class School
    def initialize(name)
        @name = name       
        @roster = {} 
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map do |grade, roster|
            @roster[grade] = roster.sort!
        end
        @roster
    end
end