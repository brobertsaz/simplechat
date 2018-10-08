require 'rails_helper'

RSpec.describe Message, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:conversation) }

  it 'is not valid without content' do
    expect(Message.new(content: nil)).to_not be_valid
  end

  it 'has valid factory' do
    expect(build(:message)).to be_valid
  end
end
