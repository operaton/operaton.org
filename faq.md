---
layout: default
title: "FAQ"
main-class: faq
---

# FAQ

{% for topic in site.data.faq %}

  <h2 id="{{ topic[0] | slugify }}"> {{ topic[0] }} <a href="#{{ topic[0] | slugify }}">#</a></h2>

  {% for qa in topic[1] %}
  <details name="faq">
    <summary id="{{ qa.q | slugify }}">{{ qa.q }} <a href="#{{ qa.q | slugify }}">#</a></summary>
    <p>{{ qa.a | markdownify }}</p>
  </details>
  {% endfor %}
{% endfor %}
