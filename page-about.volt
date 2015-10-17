{% extends 'layouts/layout.volt' %}
{% block title %}{{ page is defined ? page.getTitle() : name }}{% endblock %}
{% block content %}
    {% if page is defined %}
        <div class="inner-container">
            <div class="single-content">
                <h1>{{ page.getTitle()}}</h1>
                <div class="item-content">
                    {{ page.getContent() }}
                </div>
            </div>
        </div>
    {% else %}
        <p>You have not created this page</p>
    {% endif %}
{% endblock %}
