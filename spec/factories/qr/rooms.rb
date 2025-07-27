# frozen_string_literal: true

FactoryBot.define do
  factory :qr_room, class: 'Qr::Room' do
    name { 'MyString' }
    subdomain { 'MyString' }
  end
end
