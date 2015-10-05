{% extends 'layouts/layout.volt' %}
{% block title %}{{ this.config.application.tagline }}{% endblock %}
{% block content %}
    <div class="inner-container padded">
    	<div class="-row">
        	<div class="-col8">
    			{{ partial('partials/list-posts')}}
    		</div>
    		<div class="-col4">
           
       		</div>
       	</div>
    </div>
{% endblock %}
