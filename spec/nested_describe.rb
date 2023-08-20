RSpec.describe '#even?' do
    describe 'with even number' do
        it 'is even' do

            number = 8
            expect(number.even?).to eq(true)
        end
    end
    describe 'with odd number' do
        it 'is not even' do
            number = 7
            expect(number.even?).to eq(false)
        end
    end
end

#   This is about before and after blocks in ruby

RSpec.describe 'before and after hooks test' do
    before(:example) do
        puts "Before example"
    end
    after(:example) do
        puts "After example"
    end

    before(:context) do #this is the parent context for the describe block above
        puts "Before context"
    end
    after(:context) do
        puts "After context"
    end

    it 'should be true' do
        name = 'Alazar'
        expect(name).to eq('Alazar')
    end
    it 'should be false' do
        name = 'Alazar'
        expect(name).not_to eq('other name')
    end
    context 'this is nested context' do
        before(:context) do #this is the inner context definex above
            puts "This is the nested context"
        end
        it 'should be false' do
            name = 'Alazar'
            expect(name).not_to eq('other name')
        end
    end

  end

class Student
    attr_reader :name
    def initialize(name="new Student with no name")
        @name = name
    end
end

RSpec.describe 'student name existence' do
    let(:student){Student.new('Alazar Lemma')}
    # outside a context
    it 'should validate student name existence' do
        expect(student.name).to eq('Alazar Lemma')
    end
    context 'testing the default name for the new student' do
        let(:student){Student.new }
        it 'should give default name' do
            expect(student.name).to eq('new Student with no name'), "Expecte name \'new Student with no name\', but got #{student.name}"
        end
    end
end
