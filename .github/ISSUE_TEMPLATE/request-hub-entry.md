name: Request Hub Entry
description: Submit a new item
title: "[Hub]: Add [component name] to the Hub"
labels: ["hub"]
body:
- type: input
  id: name
  attributes:
  label: Name
  description: Enter the name of the solution, tool, or item
  placeholder: e.g., My Awesome Tool
  validations:
  required: true

- type: textarea
  id: description
  attributes:
  label: Description
  description: Provide a detailed description of the item
  placeholder: Tell us more about this item...
  validations:
  required: true

- type: dropdown
  id: type
  attributes:
  label: Type
  description: Select the type of item
  options:
  - Solution
  - Plugin
  - Add-on
  - Tool
  validations:
  required: true

- type: dropdown
  id: license
  attributes:
  label: License
  description: Select the license type
  options:
  - Commercial
  - AGPL
  - Apache 2.0
  - BSD
  - EPL 2.0
  - GPL
  - LPGPL
  - MIT
  - Other Open Source
    validations:
    required: true

- type: input
  id: url
  attributes:
  label: Website
  description: Enter the URL of the item
  placeholder: https://example.com
  validations:
  required: true

- type: input
  id: source
  attributes:
  label: Source
  description: Enter the URL to the source code repository (if available)
  placeholder: https://github.com/example/myexample

- type: input
  id: contact
  attributes:
  label: Contact
  description: Enter contact information
  placeholder: e.g., email@example.com or GitHub username
