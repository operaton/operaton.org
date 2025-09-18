---
layout: default
title: "FAQ"
main-class: faq
---

# FAQ

{% for topic in site.data.faq %}

  <h2> {{ topic[0] }} </h2>

  {% for qa in topic[1] %}
  <details name="faq">
    <summary>{{ qa.q }}</summary>
    <p>{{ qa.a }}</p>
  </details>
  {% endfor %}
{% endfor %}
