class DiceScraper
  def scrape_page(dice_url)
    agent = Mechanize.new

    agent.get(dice_url)

    page = agent.page.link_with(text: "Ruby").click
  end
end
