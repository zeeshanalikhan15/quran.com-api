# frozen_string_literal: true

# == Schema Information
#
# Table name: audio_sections
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Audio::Section, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
