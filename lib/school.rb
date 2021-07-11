# code here!

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster={}
    end
    def add_student(stu_name,grade)
       roster[grade]  ||= []
       roster[grade] << stu_name
    end
    def grade(stu_grade)
     roster[stu_grade]
    end
    def sort
      sorted={}
       roster.each do |num,stu|
       sorted[num]=stu.sort
      end
      sorted
    end
end
