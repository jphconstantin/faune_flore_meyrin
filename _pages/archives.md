---
layout: archive
permalink: /archives/
---
Afficher le mois en français !
Grouper par mois ?
<div class="post">
	<h2>Archives</h2>
	<ul>
	  {% for post in site.posts %}
	    {% unless post.next %}
	      <h3>{{ post.date | date: '%Y %b' }}</h3>
	    {% else %}
	      {% capture year %}{{ post.date | date: '%Y %b' }}{% endcapture %}
	      {% capture nyear %}{{ post.next.date | date: '%Y %b' }}{% endcapture %}
	      {% if year != nyear %}
	        <h3>{{ post.date | date: '%Y %b' }}</h3>
	      {% endif %}
	    {% endunless %}

	    <li>{{ post.date | date: "%d-%m-%Y" }} <a href="{{ post.url | relative_url }}">{{ post.title }}</a></li>
	  {% endfor %}
	</ul>
</div>
