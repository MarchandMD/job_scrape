class CsvGenerator
  def create_csv_file(to_file, page)
    CSV.open(to_file, "wb") do |csv|
      csv << %w[title link]
      page.links.each_with_index do |link, index|
        next unless index >= 5 && index.odd? && !link.uri.nil?

        p "#{link.text.strip}: #{link.uri.host}#{link.uri.path}?#{link.uri.query}"
        File.write("mechanize_results.txt", "#{link.text.strip}: #{link.uri.host}#{link.uri.path}#{link.uri.query}\n", mode: 'a')

        csv << [link.text.strip, "#{link.uri.host}#{link.uri.path}?#{link.uri.query}"]
      end
    end
  end
end
