class Board < ApplicationRecord
  has_many :stuffs, dependent: :destroy

  def self.all_boards
    Board.find_by_sql(
    "SELECT *
    FROM boards
    ORDER BY boards.name"
    )
  end
end
