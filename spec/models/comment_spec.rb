# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should validate_presence_of(:email) }
  it { should_not allow_value('vincent@hotmail').for(:email) }
  it { should allow_value('vincent@hotmail.com').for(:email) }

  it { should validate_presence_of(:body) }
  it { should belong_to(:post) }
end
