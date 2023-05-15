<!-- Improved compatibility of back to top link: See: https://github.com/marchandmd/job_scrape/pull/73 -->

<a name="readme-top"></a>

<!--
*** Thanks for checking out the job_scrape. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">

  <h1 align="center">Scraping Jobs with Ruby</h1>

  <p align="center">
    Building a tool to scrape job boards for desirable jobs, and consolidating the data into GoogleSheets
    This tool will scrape Dice.com and/or LinkedIn depending on what you comment/uncomment
    <br />
    <img src="spy_glass.jpg"  width="60%" height="20%">
    <br />
    <br />
    <a href="https://github.com/marchandmd/job_scrape/issues">Report Bug</a>
    |
    <a href="https://github.com/marchandmd/job_scrape/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
  <summary>Table of Contents</summary>
  <ul>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ul>

<!-- ABOUT THE PROJECT -->

## About The Project

Basic job scraper to retrieve Ruby jobs from Dice.com (or LinkedIn)

## What did I learn building this:

-   Basic scripting structure in Ruby
-   use of the Mechanize and Nokogiri gem
-   exporting of results to Google Sheets

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

[![Ruby][ruby.com]][ruby-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

n/a
- Ruby 2.7.4
- mechanize gem
- google_drive
- nokogiri (may be redundant, as mechanize is built atop nokogiri)
- Google Cloud account

### Installation

1. Clone the repo
    ```sh
    git clone https://github.com/marchandmd/job_scrape.git
    ```

2. Install packages
    ```sh
    bundle
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

1. The majority of this project is supported by [this video](https://www.youtube.com/watch?v=VqoSUSy011I)
2. This project is specific to Dice.com and `Ruby` jobs.... there's also the ability to scrape LinkedIn

Here's how to set this up, so you too can scrape Ruby Jobs from Dice (or something more specific from LinkedIn):

1. git clone [https://github.com/marchandmd/job_scrape.git](https://github.com/marchandmd/job_scrape.git)
2. cd into the main project directory which is called `job_scrape`
3. run `bundle`

Now you need to enable a connection to Google Drive:

1. Go to [Google Cloud](https://cloud.google.com/)
2. Log into the Console (as of the composition of this README that link is in the upper right hand corner, very near where the button to Log in was)
3. Create a new project by following [these instructions](https://developers.google.com/workspace/guides/create-project) (takes a hot minute to become available; sit tight)
4. Make sure you're actually in the project by visually confirming (at the writing of this README there's a drop down square button that lists the name of the project currently active)
5. click the Hamburger menu in the upper left hand corner (the three horizontal lines) to make the sidebar navigation menu appear
6. Hover over "APIs & Services"
7. Select "Library" from the popup
8. Search for `Google Drive API`
9. select it; enable it (there should be a button to enable it)
10. Do the same thing for `Sheets API`
11. Navigate to your Google Cloud project dashboard
12. there should now be a permanent sidebar with a `credentials` link; click it
13. click "Create Credentials" (should be near the top)
14. click (or select) "Service Account"
15. give it a name (the service account ID will be automatically populated)
16. click "create and continue"
17. Select a role "Basic - Owner"
18. Click "done"
19. Now you should be back on your Google Cloud Dashboard and you should see a hyperlink for your new Service Account Credentials; click it
20. There should now be a couple of links at the top of the page, like "details, permissions, keys, metrics, logs"
21. Click "Keys"
22. Now click "Add Key"
23. Now click "Create New Key"
24. Popup window options should be "JSON" Or "P12".... choose JSON
25. click Create
26. Keys should download directly to your computer; if not, make a copy of the key and store it on your local machine
27. Move that `JSON` file from downloads into the root of the `job_scrape` repo
28. Change it's name to `client_secret.json` (if you name it something else, you'll need to update the `worksheet_editor.rb` file)

Now you need to create a destination spreadsheet for the data in Googlesheets

1. Go to Google Sheets
2. Create a new spreadsheet
   - if you're going to scrape Dice.com, name the spreadsheet `all dice jobs` (verbatim)
   - if you're going to scrape Linked in, name the spreadsheet `jobs`
3. Click "Share"
4. Back in your editor, open `client_secret.json` and copy the email address for the `client_email`
5. Paste that email address in GoogleSheets (uncheck the 'notify by email' checkbox)
6. you can now edit that Spreadsheet with the job_scraper

Scrape the jobs:

1. Open `Mechanize.rb`
2. If you want to scrape Dice.com, make sure lines 8-12 are commented out
3. If you want to scrape Dice.com, make sure lines 14 and 15 are uncommented
4. If you want to scrape LinkedIn, make sure lines 8-12 are uncommented
4. If you want to scrape LinkedIn, make sure lines 14 and 15 are uncommented
5. If you want to scrape LinkedIn, change the 2nd argument in the `#scrape_page` method to your desired job title (on line 8 and line 11)

in the terminal run:

```
bundle exec ruby mechanize.rb
```

NOTE: sometimes Mechanize will just timeout with an `HTTPForbidden` error; Not a big deal. Just redo the command. It should work after one or two tries.

If your terminal shows:

```
 "jobs added to google sheet"
```

Than everything was successful and you should see your googleSheet populated with jobs from Dice.com

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

- [x] ReadMe: clean up the `Usage` section
- [ ] Expand to additional websites to scrape
- [ ] Refine the filtering of positions to target descriptions


See the [open issues](https://github.com/marchandmd/job_scrape/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

MIT license

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Michael Marchand - MichaelDavidMarchand@gmail.com

Project Link: [https://github.com/MarchandMD/job_scrape](https://github.com/marchandmd/job_scrape)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

-   [Choose an Open Source License](https://choosealicense.com)
-   [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
-   [Img Shields](https://shields.io)
-   [GitHub Pages](https://pages.github.com)
-   [Rubocop](https://rubocop.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/marchandmd/job_scrape.svg?style=for-the-badge
[contributors-url]: https://github.com/marchandmd/job_scrape/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/marchandmd/job_scrape.svg?style=for-the-badge
[forks-url]: https://github.com/marchandmd/job_scrape/network/members
[stars-shield]: https://img.shields.io/github/stars/marchandmd/job_scrape.svg?style=for-the-badge
[stars-url]: https://github.com/marchandmd/job_scrape/stargazers
[issues-shield]: https://img.shields.io/github/issues/marchandmd/job_scrape.svg?style=for-the-badge
[issues-url]: https://github.com/marchandmd/job_scrape/issues
[license-shield]: https://img.shields.io/github/license/marchandmd/job_scrape.svg?style=for-the-badge
[license-url]: https://github.com/marchandmd/job_scrape/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/mmarchand1
[product-screenshot]: images/screenshot.png
[bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[bootstrap-url]: https://getbootstrap.com
[ruby.com]: https://img.shields.io/badge/v2.7.4-Ruby-red?style=for-the-badge&logo=ruby
[ruby-url]: https://ruby-doc.org/core-2.7.2/
[rspec.com]: https://img.shields.io/badge/rspec-v3.10-success
[rspec-url]: https://rspec.info/documentation/
