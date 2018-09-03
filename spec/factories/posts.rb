# frozen_string_literal: true

FactoryGirl.define do
  factory :post do
    title 'MyString'
    description 'Tengo un texto largo para que la validacion pase'
    association :user, factory: :user
  end
end
