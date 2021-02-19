class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    self.name = student_hash[:name]
    self.location = student_hash[:location]
    @@all << self
  end

  def self.create_from_collection(students_array)
    new_student = Student.new(students_array)
    students_array.each do |attribute,info|
      if attribute = name
        new_student.name = attribute[info]
        elsif attribute = location
          new_student.location = attribute[info] 
      end
      end
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    @@all
  end
end

