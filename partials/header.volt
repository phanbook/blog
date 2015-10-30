<header>
    <div class="inner-container -row">
        <div class="-col4">
            <a href="/" class="site-avatar">
                <img id="site-logo" class="logo-big" src="{{getImageSrc('logo.png')}}" alt="Phanbook Meta">
            </a>
        </div>
        <nav class="-col8">
        {% set menus = [
            'Company news' : 'company',
            'Speakers' : 'speakers',
            'Questions' : 'questions',
            'About' : 'about'
        ]%}
        <a href="/" class="{% if tab == 'hot' %}active{% endif %}">{{t('Home')}}</a>
        {% for value, key in menus %}
            <a href="{{key}}" class="{% if key == tab %}active{% endif %}">{{t(value)}}</a>
        {% endfor %}
        </nav>
      </div>
</header>
