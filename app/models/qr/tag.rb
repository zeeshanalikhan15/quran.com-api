# == Schema Information
# Schema version: 20230313013539
#
# Table name: qr_tags
#
#  id             :bigint           not null, primary key
#  approved       :boolean          default(TRUE)
#  comments_count :integer
#  name           :string
#  posts_count    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_qr_tags_on_approved     (approved)
#  index_qr_tags_on_name         (name)
#  index_qr_tags_on_posts_count  (posts_count)
#
class Qr::Tag < QrRecord
  has_many :post_tags, class_name: 'Qr::PostTag'
  has_many :posts, through: :post_tags, class_name: 'Qr::Post'

  scope :approved, -> {where approved: true}

  def hash_tag
    "##{name}"
  end

  def self.with_tagname_or_id(values)
    tags_or_ids = values.tr('#', '').split(',')
    ids = tags_or_ids.select { |part| part =~ /\d+/ }
    tags = tags_or_ids - ids

    with_ids = approved.where(id: ids)
    approved.where(name: tags).or(with_ids)
  end
end
