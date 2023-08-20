RSpec.describe "testing other equality checker methods to work" do
  let(:a) { 3.0 }
  let(:b) { 3 }
  let(:c) { b }
  it "validate the method eq" do
    expect(a).to eq(b)
  end
  it "validate the method eql" do
    expect(a).not_to eql(b)
  end
  it "validate the method equal" do
    expect(a).not_to equal(b)
  end
  it "validate the method be" do
    expect(a).not_to be(b)
  end


end
RSpec.describe "testing comparision operators" do
  grade =  -30
  describe grade do
    it {is_expected.not_to be > 100}
    it {is_expected.not_to be < 0}
    it {is_expected.to be <= 100}
    it {is_expected.to be >= 0}
  end



  array = [1,3,5]
  it 'validating all matcher' do

    for  val in array do
      expect(val).to be_odd, "The array #{array} contains the number #{val} which is an even!"
    end
    #Using the all matcher we can write it in oneliner code like below
    expect([1,3,5]).to  all(be_odd)
  end

end


