{% extends 'layouts/layout.volt' %}
{% block title %}{{ post.getTitle() ? post.getTitle() : 'Phanbook'}}{% endblock %}

{% block content %}
    <style>
        header {
            position: absolute;
            background: none;
            width: 100%;
        }
    </style>
    {% if post is defined %}
        <article class="post full-post">
        {% if  post.getThumbnail() is not empty %}
        <div class="hero" style="background: linear-gradient(
          rgba(37, 43, 51, 0.35),
          rgba(37, 43, 51, 0.35)
        ), url('{{ post.getThumbnail()  }}'); background-size: cover;">
        {% else %}
        <div class="hero no-image">
        {% endif %}
        <div class="inner-container media-padded">
            <h1 class="h2">{{ post.getTitle() }}</h1>
            <div class="author-container">
                <a href="/@{{post.user.getUsername()}}">
                    {{ image(getUrlAvatar(post.user.getEmail()) ,'class':'img-rounded' ,false) }}
                </a>
                <h2 class="h4 author-name">by <a href="">{{ post.user.getInforUser() }}</a></h2>
                <div class="date">on {{ date("M j/y \a\t h:i", post.getCreatedAt()) }}</div>
            </div>
        </div>
    </div>
    <div class="inner-container">
        <div class="entry">
            <div class="media-padded">
                {{ this.markdown.text(post.getContent()) }}
                <div class="metadata -row">
                    <div class="-col6 _textLeft">
                        <p>By <a href="/{{ post.user.getUsername()}}">{{ post.user.getInforUser() }}</a></p>
                    </div>
                    <div class="-col6 _textRight">
                        <p><strong>Tagged in</strong>&nbsp;
                        {% for tag in post.tag %}
                            <a href="/tags/{{tag.getId()}}/{{tag.getSlug()}}"><span class="postTag">{{ tag.getSlug() }}</span></a>
                        {% endfor %}</p>
                    </div>
                </div>
            </div>
            {% if isAdmin() %}
            <a href="/backend/posts/edit/{{post.id}}">Edit post</a>
            {% endif %}
        </div>
        <div class="disqus media-padded">
            {% if this.config.disqus is defined %}
                {{partial('partials/disqus')}}
            {% else %}
                {# To do add comment form#}
            {% endif %}
        </div>
    </div>
</article>
    {% else %}
        <p> Sorry post not exsing</p>
    {% endif %}
{% endblock %}
