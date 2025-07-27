# == Schema Information
# Schema version: 20230313013539
#
# Table name: qr_rooms
#
#  id         :bigint           not null, primary key
#  name       :string
#  subdomain  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Qr::Room < QrRecord
end
