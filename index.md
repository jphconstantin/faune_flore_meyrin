---
layout: splash
permalink: /
header:
  image: /assets/images/ban.jpg
intro: 
  - excerpt: 'Découvrez les merveilles de la Nature dans Meyrin à travers sa faune et sa flore.'
feature_row:
  - image_path: /assets/images/splash_image_1.jpg
    alt: "placeholder image 1"
    title: "Terre"
  - image_path: /assets/images/splash_image_2.jpg
    alt: "placeholder image 2"
    title: "Eaux"
  - image_path: /assets/images/splash_image_3.jpg
    title: "Air"
feature_row2:
  - image_path: /assets/images/ban.jpg
    alt: "placeholder image 2"
    excerpt: 'Comme la commune possède des aires protégées et des zones humides, les animaux y vivent paisiblement, en sécurité et tout en liberté dans leur milieu naturel malgré la proximité des humains.'
    url: "/blog/"
    btn_label: "Les articles"
    btn_class: "btn--primary"
feature_row3:
  - image_path: /assets/images/splash_image_4.jpg
    alt: "placeholder image 2"
    excerpt: 'Les insectes comme la libellule prospèrent dans les milieux aquatiques.'
    url: "/blog/"
    btn_label: "Les articles"
    btn_class: "btn--primary"    
feature_row4:
  - image_path: /assets/images/splash_image_5.jpg
    alt: "placeholder image 2"
    title: "Placeholder Image Center Aligned"
    excerpt: 'This is some sample content that goes here with **Markdown** formatting. Centered with `type="center"`'
    url: "/blog/"
    btn_label: "Read More"
    btn_class: "btn--primary"
feature_row5:
  - image_path: /assets/images/sponsoring.jpg
    alt: "placeholder image 2"
    title: "Recherche mécène(s) !"
    excerpt: 'Recherche mécène(s) pour héberger le site ...'
    url: "/mecenes/"
    btn_label: "Read More"
    btn_class: "btn--primary"    
---
{% include feature_row id="intro" type="center" %}
En effet, Meyrin, malgré son urbanisation, présente une richesse écologique que ce soit dans les milieux terrestres, aquatiques et aériens. Une grande diversité de faune s'épanouit dans les bois et les champs voire même dans les habitations ...
{% include feature_row %}

{% include feature_row id="feature_row2" type="left" %}

{% include feature_row id="feature_row3" type="right" %}

Dans la commune, vous pourrez faire la rencontre d'animaux difficiles à observer comme ...
une grande armoire à pharmacie ...
Ainsi que ...


Le territoire possède des centaines d'espèces de fleurs comme les orchidées, les ..., ...

Quant aux arbres ...


Au gré de nos ... nous vous ferons découvrir ...

Une faune rare et diversifiée ... s'épanouit dans le territoire ...
Les sous-bois représentent un biotope idéal pour les champignons.
La faune et la flore parviendront-elles à s’adapter suffisamment rapidement aux changements climatiques ? Voilà l’inconnue à laquelle font face les écologues

<h3 class="archive__subtitle">{{ site.data.ui-text[site.locale].recent_posts | default: "Recent Posts" }}</h3>

{% assign posts = site.posts %}
{% for post in posts limit:3 %}
<article>
<h2>
      <a href="{{ post.url | relative_url  }}">{{ post.title }}</a>
</h2>

<time datetime="{{ post.date | date: "%d" }}">{{ post.date | date_to_long_string | date: "%d" }}</time>
{% assign m = post.date | date: "%m" %}
    {% case m %}
      {% when '01' %}Janvier
      {% when '02' %}Février
      {% when '03' %}Mars
      {% when '04' %}Avril
      {% when '05' %}Mai
      {% when '06' %}Juin
      {% when '07' %}Juillet
      {% when '08' %}Août
      {% when '09' %}Septembre
      {% when '10' %}Octobre
      {% when '11' %}Novembre
      {% when '12' %}Décembre
    {% endcase %}
<time datetime="{{ post.date | date: "%Y" }}">{{ post.date | date_to_long_string | date: "%Y" }}</time>

{{ post.content }}
</article>
{% endfor %}

{% include feature_row id="feature_row5" type="left" %}

{% include feature_row id="feature_row4" type="center" %}