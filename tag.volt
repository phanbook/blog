{% extends 'layouts/layout.volt' %}
{% block title %}{{ this.config.application.tagline }}{% endblock %}
{% block content %}
    <div class="inner-container padded">
    	<div class="-row">
        	<div class="-col8 tags">
                    <p class="info">
                        A tag is a keyword or label that categorizes your question or article with other, similar questions. Using the right tags makes it easier for others to find and answer your question
                    </p>
                    {% for tag in paginator.items %}
                    <div class="item-tags">
                        <p>{{ link_to('tags/' ~ tag.getId() ~ '/' ~ tag.getSlug(), tag.getName())}}
                            <span class="item-multiplier">×</span>&nbsp;{{tag.getNumberPosts()}}
                        </p>
                        <div class="examples">
                            <p class="expander">{{ tag.getDescription() }}</p>
                        </div>
                    </div>
                    {% endfor %}
    		</div>
    		<div class="-col4">
           		{{ partial('partials/right-side')}}
       		</div>
       	</div>
    </div>
{% endblock %}
