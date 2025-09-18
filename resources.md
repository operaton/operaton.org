---
layout: default
title: Resources
main-class: resources
---

<header>
  <h1>Resources</h1>
</header>



{% for category in site.data.resources %}

  <h2> {{ category[0] }} </h2>

  <div>

    {% for topic in category[1] %}
      <div>
        <span>{{ topic[1].tag }}</span>
        <h3>{{ topic[0] }}</h3>
        <ul>
        {% for resource in topic[1].resources %}
          <li><a href="{{ resource.url }}">{{ resource.name }}</a></li>
        {% endfor %}
        </ul>
      </div>
    {% endfor %}
  </div>
{% endfor %}
