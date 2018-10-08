class Message < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :conversation, dependent: :destroy

  validates_presence_of :content
end
