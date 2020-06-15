---
layout: home
sidebar:
  - title: categories
  - title: tags
permalink: /blog/
authors: [jpc,vb]
---
<ul>
{% for author in site.data.authors %}
 <li>{{ author.name }}-{{ author.bio }}--{{ author.links.url }}</li>
{% endfor %}
</ul>