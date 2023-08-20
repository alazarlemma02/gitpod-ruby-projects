RSpec.shared_examples 'test length to be equal to 3' do
  it 'has length 3' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Hash do
  subject { [1,2,3] }
  include_examples 'test length to be equal to 3'
end
RSpec.describe String do
  subject { 'abc' }
  include_examples 'test length to be equal to 3'
end

class Student
  def length
    3
  end
end

RSpec.describe Student do
  subject { Student.new}
  include_examples 'test length to be equal to 3'
end

