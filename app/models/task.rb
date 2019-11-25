class Task < ApplicationRecord
  before_save :check_author
  belongs_to :stuff

end
