require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has invalid factory without name' do
    expect(build(:user, name: nil)).not_to be_valid
  end
end