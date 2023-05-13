class WorksheetEditor
  def add_rows(page)
    session = GoogleDrive::Session.from_service_account_key("client_secret.json")
    spreadsheet = session.spreadsheet_by_title('jobs')
    worksheet = spreadsheet.worksheets.first

    page.links.each_with_index do |link, index|
      next unless index >= 5 && index.odd? && !link.uri.nil?

      worksheet.insert_rows(worksheet.num_rows + 1, [["#{link.text.strip}", "#{link.uri.path}", "#{link.uri.host}#{link.uri.path}?#{link.uri.query}"]])
    end

    worksheet.save
  end
end
