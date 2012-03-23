class Task < ActiveRecord::Base
  validates :title, presence: true

  def close
    update_attribute(:closed, true)
  end

  def self.pending
    where(closed: false)
  end

  def self.closed
    where(closed: true)
  end
end
