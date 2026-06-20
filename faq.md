---
layout: default
title: "FAQ"
main-class: faq
---

# FAQ

{% for topic in site.data.faq %}

  <h2 id="{{ topic[0] | slugify }}"> {{ topic[0] }} <a href="#{{ topic[0] | slugify }}">#</a></h2>

  {% for qa in topic[1] %}
  <details name="faq" id="{{ qa.q | slugify }}">
    <summary data-answer="{{ qa.a | markdownify | strip_html | strip_newlines | escape }}"><span>{{ qa.q }}</span> <a href="#{{ qa.q | slugify }}">#</a></summary>
    <p>{{ qa.a | markdownify }}</p>
  </details>
  {% endfor %}
{% endfor %}

<div id="faq-tooltip" role="tooltip" aria-hidden="true"></div>

<style>
#faq-tooltip {
  position: fixed;
  display: none;
  max-width: 420px;
  background: var(--color-bg, #fff);
  border: 1px solid var(--color-border, #ccc);
  border-radius: 6px;
  box-shadow: 0 4px 16px rgba(0,0,0,.15);
  padding: .75rem 1rem;
  font-size: .875rem;
  font-weight: 400;
  line-height: 1.5;
  color: var(--color-font, #333);
  pointer-events: none;
  z-index: 9999;
  white-space: normal;
}
</style>

<script>
(function () {
  var tip = document.getElementById('faq-tooltip');
  var margin = 12;

  document.querySelectorAll('.faq details summary[data-answer]').forEach(function (summary) {
    summary.addEventListener('mouseenter', function (e) {
      tip.textContent = decodeEntities(summary.dataset.answer);
      tip.style.display = 'block';
      position(e);
    });
    summary.addEventListener('mousemove', position);
    summary.addEventListener('mouseleave', function () {
      tip.style.display = 'none';
    });
  });

  function decodeEntities(str) {
    var el = document.createElement('textarea');
    el.innerHTML = str;
    return el.value;
  }

  function position(e) {
    var tw = tip.offsetWidth;
    var th = tip.offsetHeight;
    var vw = window.innerWidth;
    var vh = window.innerHeight;
    var x = e.clientX + margin;
    var y = e.clientY + margin;
    if (x + tw > vw - margin) x = e.clientX - tw - margin;
    if (y + th > vh - margin) y = e.clientY - th - margin;
    tip.style.left = x + 'px';
    tip.style.top  = y + 'px';
  }
})();
</script>
