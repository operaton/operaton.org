# Contributing to Operaton.org

Thank you for your interest in contributing to the Operaton website! As a community-driven project, we welcome contributions from everyone.

## Ways to Contribute

- **Reporting Issues:** If you find a bug or have a suggestion, please open an issue on GitHub.
- **Pull Requests:** We welcome pull requests for bug fixes, documentation improvements, and new content.
- **Registering 3rd Party Products (Hub):** If you have a solution, plugin, tool, or add-on related to Operaton, you can request to add it to our [Hub](hub.html) by filling out the [Hub Entry Request template](https://github.com/operaton/operaton.org/issues/new?template=request-hub-entry.yml).
- **Registering Service Providers:** If you offer Operaton-related services (consulting, training, support, etc.), you can request to be listed as a service provider by using the [Service Provider Entry Request template](https://github.com/operaton/operaton.org/issues/new?template=request-service-provider-entry.md).
- **Blog Posts:** Share your experiences, tutorials, and updates with the community.

## Development Setup

The website is built using [Jekyll](https://jekyllrb.com/).

### Local Development

1.  **Install Ruby and Bundler.**
2.  **Install dependencies:**
    ```bash
    bundle install
    ```
3.  **Run the local server:**
    ```bash
    bundle exec jekyll serve
    ```
4.  **View the site:** Open `http://localhost:4000` in your browser.

Alternatively, you can use Docker:
```bash
docker-compose up -d
```

---

## Writing Blog Posts

We encourage contributors to write blog posts about Operaton. Here are the guidelines for creating and submitting a post.

### File Convention

- **Location:** All blog posts must be stored in the `_posts/` directory.
- **Filename:** Use the format `YYYY-MM-DD-title-of-post.md`.
  - Example: `2026-03-27-announcing-new-feature.md`
  - Ensure the title in the filename is descriptive and uses hyphens as separators.

### Front Matter

Every post must include a YAML front matter block at the top of the file:

```yaml
---
layout: post
author: The Operaton Team
---
```

- **layout:** Always set to `post`.
- **author:** Usually "The Operaton Team", but can be a specific contributor's name if it's a guest post or personal perspective.

### Wording and Tone

- **Perspective:** Use "we" and "us" when referring to the Operaton project and team.
- **Tone:** Professional, senior-engineer-oriented, yet accessible and community-focused.
- **Language:** Clear, direct, and transparent. Avoid marketing fluff; focus on technical value, milestones, and community impact.
- **Keywords:** Use terms like *community-driven*, *technical transparency*, *open-source*, *technical debt*, and *sustainability*.

### Structure and Content

- **Headings:** Use `##` for main sections and `###` for sub-sections.
- **Introduction:** Start with a clear, engaging introduction about the topic or announcement.
- **Body:** Use bullet points for lists (e.g., release notes, key features).
- **Conclusion/CTA:** End with a call to action, such as joining the forum, starring the GitHub repository, or trying out a new release.

### Length

- **Typical Length:** Most posts are between 500 and 1,000 words (approx. 2,000–5,000 characters in Markdown).
- **Quality over Quantity:** Focus on providing meaningful information rather than meeting a specific word count.

### Adding Assets

- **Images:** All blog-related images must be stored in `assets/img/blog/`.
- **Naming:** Name image files to match the post (e.g., `2026-03-27-feature-screenshot.png`).
- **Referencing:** Reference images using absolute paths:
  ```markdown
  ![Description of the image](/assets/img/blog/2026-03-27-feature-screenshot.png)
  ```
- **Sizing:** You can optionally add sizing attributes if needed:
  ```markdown
  ![Description](/assets/img/blog/image.png){: width="710" }
  ```

### Submission Process

1.  Create a new branch for your blog post.
2.  Add your `.md` file to `_posts/` and any images to `assets/img/blog/`.
3.  Test the post locally using `jekyll serve`.
4.  Submit a Pull Request with a clear title and description of the post.

---

## Registering 3rd Party Products (Hub)

If you have developed a solution, plugin, tool, or add-on for Operaton, you can request to add it to our [Hub](hub.html). This helps the community discover your project and promotes the ecosystem.

- **How to request:** Use the [Hub Entry Request template](https://github.com/operaton/operaton.org/issues/new?template=request-hub-entry.yml).
- **Required information:** 
  - **Type:** Solution, Plugin, Add-On, Tool, or Miscellaneous.
  - **License:** Open Source (Apache 2.0, MIT, etc.) or Commercial.
  - **URLs:** Website and Source Code repository (if available).
  - **Description:** A brief overview of what your project does.

---

## Registering Service Providers

We maintain a list of [Service Providers](service-providers.html) who offer Operaton-related services. This helps users find expert help for their projects.

- **How to request:** Use the [Service Provider Entry Request template](https://github.com/operaton/operaton.org/issues/new?template=request-service-provider-entry.md).
- **Process:**
  - Fill out the YAML snippet provided in the template.
  - Attach your logo if you'd like it to be displayed.
  - Specify which services you offer:
    - 0: Product
    - 1: Technical Training
    - 2: BPMN Training
    - 3: Consulting
    - 4: Support
- **Rights:** By submitting the request, you grant permission to use your logo on the Operaton website. You also attest that you have the right to submit the entry.
