class DiceWorksheetEditor
  def add_rows(page)
    # session = GoogleDrive::Session.from_service_account_key("client_secret.json")
    # spreadsheet = session.spreadsheet_by_title('all dice jobs')
    # worksheet = spreadsheet.worksheets.first
    worksheet = connect_to_google_drive_spreadsheet(client_secret: "client_secret.json", spreadsheet_title: 'all dice jobs')
    page_count = page.parser.search('span.sc-dhi-seds-pagination')[1].children.text.slice(-2..-1).to_s
    i = 1

    while i < page_count.to_i
      page.links.each_with_index do |link, _index|
        next if link.href.include?('company') || link.text.strip == ""

        description = link.click
        publish_date = description.parser.children[1].children[0].children.find { |child| child.attribute_nodes.find { |node| node.value == "og:publish_date" } }.attributes["content"].value
        parsed_date = DateTime.parse(publish_date).strftime("%m-%d-%Y %H:%M")

        job_description = description.parser.css('div#jobDescription').children[0].text
        next if job_description.include?("Jobot")

        worksheet.insert_rows(worksheet.num_rows + 1, [["#{parsed_date}", "#{link.text.strip}", "#{link.href}", "#{job_description}", "#{buzz_words(job_description)}"]])
      end
      page = page.links[42].click
      i += 1
    end

    worksheet.save
  end

  def connect_to_google_drive_spreadsheet(client_secret:, spreadsheet_title:)
    session = GoogleDrive::Session.from_service_account_key(client_secret)
    spreadsheet = session.spreadsheet_by_title(spreadsheet_title)
    spreadsheet.worksheets.first
  end

  def buzz_words(text)
    h = Hash.new { |hash, key| hash[key] = key }
    text_array = text.split

    grouped_words = text_array.group_by { |word| h[word] = word }

    grouped_words.filter_map { |k, v| k if v.count > 2 && v[0].length > 4 }.join(" ")
  end
end
