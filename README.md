# Operaton Website

Visit under [operaton.org](https://operaton.org)

## Contributing

We welcome contributions from the community! Please see our [Contributing Guidelines](CONTRIBUTING.md) for more information on how to get involved, including instructions for writing blog posts.

## Getting Started

You can either install Ruby and use jekyll directly or docker-compose

### jekyll serve

- Make sure Jekyll is available on your machine: [Official installation guide](https://jekyllrb.com/docs/installation/)
- (optional) Run
  ```bash
  bundle install
  ``` 
  in the projects root to update the dependencies if needed
- Run 
  ```bash
  bundle exec jekyll serve
  ```
  in the projects root folder
- Visit `http://localhost:4000`

### docker-compose

- Run 
  ```bash
  docker-compose up -d
  ```
  in the root of this project
- Visit `http://localhost:4000`
