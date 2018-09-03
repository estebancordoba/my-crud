require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_length_of(:description).is_at_least(20) }
  it { should belong_to(:user) }
end