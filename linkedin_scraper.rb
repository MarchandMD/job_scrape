class LinkedinScraper
  def scrape_page(linkedin_url, job_title)
    agent = Mechanize.new
    # this creates a Mechanize::Page object stored in the `linkedin` variable, and it also sets the `agent` variable to be an updated version of a Mechanize object
    agent.get(linkedin_url)

    # this creates a Mechanize::Page object stored in `page`, and it updates `agent` to mirror the `sign_in` object
    page = agent.page.link_with(text: "\n      \n      \n      \n        Jobs\n      \n    ").click

    # find the specific form and insert the job title
    search_form = page.form_with(action: '/jobs/search')
    search_form.keywords = "#{job_title}"

    # submit the form
    agent.submit(search_form, search_form.button_with(type: 'submit'))
  end
end
