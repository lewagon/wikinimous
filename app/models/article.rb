class Article < ActiveRecord::Base
  validates_presence_of :title, :content

  def markdown_content
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true)
      .render(content)
      .html_safe
  end
end
