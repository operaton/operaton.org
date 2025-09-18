---
name: Request Service Provider Entry
about: If you'd like to present your Operaton-related offerings on the official operaton.org
  website.
title: Request Service Provider Entry
labels: ''
assignees: ''

---

Please fill out the YML snippet at the end **and** attach your logo, if you like.

If you know how to, you may as well create a pull request with your changes. 

## Hints

Your information needs to be placed after the `:`, e.g.:
`name: ` `Your Company`

For the services number values, the numbers correspond to the following service-names:

1.  Product 
2. Technical Training
3. BPMN Training 
4. Consulting
5. Support 

```yml
- name: Acme Inc.
  logo: /assets/img/service-providers/... your logo file name... .png
  services: [0, 1, 2, 3, 4]
  location:
    country: Earth
    city: Operatown
    area-of-operation: e.g. EU
  description: >-
    One to three short sentences to describe your offerings
  website: https://example.com
```

With submitting this issue, you are allowing the use of your logo on the operaton.org website. You may withdraw those usage rights in the future.
You also attest that you have the right to submit the entry.
