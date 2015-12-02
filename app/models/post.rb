class Post < ActiveRecord::Base
  def self.lost
    where(category: 'lost')
  end

  def self.found
    where(category: 'found')
  end

  def self.free
    where(category: 'free')
  end

  def self.wanted
    where(category: 'wanted')
  end
end
