require 'open-uri'

class ScraperService
  def initialize(query)
    @query = query
  end

  def call
    recipes = []
    url = "https://www.marmiton.org/recettes/recherche.aspx?type=all&aqt=#{@query}"
    html = open(url).read
    doc = Nokogiri::HTML(html, nil, "utf-8")
    doc.search(".recipe-card").first(10).each do |result|
      title = result.search(".recipe-card__title").text.strip
      desc = result.search(".recipe-card__description").text.strip
      recipes << {title: title, desc: desc}
    end
    return recipes
  end
end
