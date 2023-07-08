class Todo < ApplicationRecord
  validates :task, presence: true, length: {minimum: 6, maximum:300},
                                  uniqueness: { case_sensitive: false }
end
