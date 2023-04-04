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

For a long time I've wanted to be able to scrape a web page, for various reasons.

Now that I've successfully endured the rigorous 7-month immersive boot camp of [Turing School of Software and Design](https://turing.edu/), the time seems right to tackle this project and scrape job sites for positions that I actually want to apply for.

## What did I learn building this:

-   Basic scripting structure in Ruby
-   use of the Nokogiri gem
-   exporting of results to a CSV file

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

[![Ruby][ruby.com]][ruby-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

n/a

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

This is where I need to be adding info; because I have no idea how to use this now. So let's see what I cna do here.

So here's how I used this:

1. copy the URL of a job site (This has been setup to use `https://www.linkedin.com`)
2. With the terminal/command line currently in the `job_scrape/` directory, run `ruby job_scrape.rb https://www.linkedin.com
3.


And then what happens?

It looks like the `searched_page.html` was updated/created.

Yeah, I've also hard coded the target URL. so there's a lot of work still to be done here.

I'm not necessarily building test first, and I don't really want to build test first, I just want to build it debugger first.

so why has this ARGV ever been so challenging to me? It's literally just the argument passed. So, this would be super easy.

This totally gives me an awesome jump off point to really start building this from the ground up.

I might be able to....could I add a string?

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

- [ ] ReadMe: clean up the `Usage` section


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
