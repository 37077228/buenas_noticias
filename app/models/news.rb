class News < ApplicationRecord
  belongs_to :category

  validates :header, presence: true
  validates :body, presence: true
  validates :link, presence: true

  def self.search(text)
    if text and !text.empty?
      news_found = News.where(
        "header LIKE ? or header LIKE ?", "%#{text.capitalize}%", "%#{text.downcase}%"
      )
      if news_found
        news_found
      else
        News.all
      end
    else
      News.all
    end
  end

end