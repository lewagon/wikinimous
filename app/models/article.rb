class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true

  def markdown_content
    Kramdown::Document.new(content).to_html.html_safe
  end
end
