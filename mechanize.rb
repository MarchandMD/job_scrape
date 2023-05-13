require 'bundler'
require './worksheet_editor'
require './linkedin_scraper'
require './dice_scraper'
require './dice_worksheet_editor'
Bundler.require

# search_results = LinkedinScraper.new.scrape_page('https://www.linkedin.com/', "junior software developer remote")
# WorksheetEditor.new.add_rows(search_results)

# search_results2 = LinkedinScraper.new.scrape_page('https://www.linkedin.com/', "junior ruby on rails remote")
# WorksheetEditor.new.add_rows(search_results2)

search_results3 = DiceScraper.new.scrape_page('https://www.dice.com')
DiceWorksheetEditor.new.add_rows(search_results3)

puts "jobs added to google sheet"
