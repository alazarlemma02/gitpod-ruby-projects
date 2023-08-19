class Student
    attr_reader :name, :email
    def initialize(name, email)
        @name = name
        @email = email
    end
end

RSpec.describe 'Student' do
    before do
        @student = Student.new('Abebe','abebe@gmail.com')
    end
    it 'has a name' do
        expect(@student.name).to eq('Abebe')
    end
    it 'has an email' do
        expect(@student.email).to eq('abebe@gmail.com')
    end
end