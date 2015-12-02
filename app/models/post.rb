class Post < ActiveRecord::Base
  CATEGORIES = %w(Lost Found Free Wanted)

  validates :title, :name, :email, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  def self.lost
    where(category: 'Lost')
  end

  def self.found
    where(category: 'Found')
  end

  def self.free
    where(category: 'Free')
  end

  def self.wanted
    where(category: 'Wanted')
  end
end
