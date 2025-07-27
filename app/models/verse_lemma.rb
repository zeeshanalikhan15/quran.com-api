# frozen_string_literal: true

# == Schema Information
# Schema version: 20230313013539
#
# Table name: verse_lemmas
#
#  id          :integer          not null, primary key
#  text_clean  :string
#  text_madani :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class VerseLemma < ApplicationRecord
  has_many :verses
  has_many :words, through: :verses
end
