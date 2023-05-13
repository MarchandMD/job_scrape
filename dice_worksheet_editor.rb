class DiceWorksheetEditor
  def add_rows(page)
    session = GoogleDrive::Session.from_service_account_key("client_secret.json")
    spreadsheet = session.spreadsheet_by_title('all dice jobs')
    worksheet = spreadsheet.worksheets.first
    page_count = page.parser.search('span.sc-dhi-seds-pagination')[1].children.text.slice(-2..-1).to_s
    i = 1

    while i < page_count.to_i
      page.links.each_with_index do |link, _index|
        next if link.href.include?('company') || link.text.strip == ""

        description = link.click
        publish_date = description.parser.children[1].children[0].children.find { |child| child.attribute_nodes.find { |node| node.value == "og:publish_date" } }.attributes["content"].value
        parsed_date = DateTime.parse(publish_date).strftime("%m-%d-%Y %H:%M")

        worksheet.insert_rows(worksheet.num_rows + 1, [["#{parsed_date}", "#{link.text.strip}", "#{link.href}", "#{description.parser.css('div#jobDescription').children[0].text}"]])
      end
      page = page.links[42].click
      i += 1
    end

    worksheet.save
  end
end
