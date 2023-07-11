require 'rails_helper'

RSpec.describe Store, type: :model do
  subject { create(:store) }
  it 'has a valid factory' do
    expect(create(:store)).to be_valid
  end

  it { is_expected.to(validate_uniqueness_of(:code)) }
  it { is_expected.to(validate_presence_of(:code)) }
  it { is_expected.to(validate_presence_of(:name)) }
  it { is_expected.to(validate_presence_of(:length)) }
  it { is_expected.to(validate_numericality_of(:length)) }
  it { is_expected.to(validate_presence_of(:width)) }
  it { is_expected.to(validate_numericality_of(:width)) }
  it { is_expected.to(validate_presence_of(:height)) }
  it { is_expected.to(validate_numericality_of(:height)) }

  it { is_expected.to(belong_to(:warehouse)) }
end
