require 'open-uri'
require 'pry'
require 'nokogiri'
require 'csv'

class ScrapeBot
  attr_accessor :parsed_page

  def initialize(url)
    @parsed_page = Nokogiri::HTML(URI.parse(url).read, &:noblanks)
  end

  def scrape_and_write
    CSV.open('search_results.csv', 'wb') do |csv|
      @parsed_page.css('body').each do |a|
        csv << [a.children.text.strip, a.attributes['href'].value] unless a.attributes['href'].nil?
      end
    end
  end

  def write_to_html
    require 'pry'; binding.pry
    File.write('searched_page.html', @parsed_page.css('body').to_html)
  end
end

url = "https://www.linkedin.com/jobs/search/?currentJobId=3345968150&distance=25&f_E=2%2C3&f_F=eng%2Cit&f_JT=F&f_T=100%2C30169%2C14893%2C9%2C24%2C25201&f_TPR=r86400&f_WT=2&geoId=103644278&keywords=ruby%20on%20rails%20developer&sortBy=DD"

new_file = ScrapeBot.new(url)
new_file.write_to_html
# new_file.scrape_and_write
puts 'done'
