require 'rails_helper'

RSpec.describe Conversation, type: :model do

  it { should have_many(:messages) }
  it { should have_and_belong_to_many(:users) }

  it 'is not valid without a name' do
    expect(Conversation.new(name: nil)).to_not be_valid
  end

  it 'has valid factory' do
    expect(build(:conversation)).to be_valid
  end
end
