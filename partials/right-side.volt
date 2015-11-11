<!-- begin right-sidebar -->
<div class="sidebar media-padded">
    <section>
        <!-- search form -->

    </section>

    <section>
    <p><a href="{{ publicUrl }}/feed/">Subscribe via RSS Feed</a></p>
    </section>

    <section>
    <div class="-row">
        <div class="-col6"><h3 class="h6">Tags</h3></div>
        <div class="-col6"></div>
    </div>
    {% for tag in tags %}
        <a href="/tags/{{tag.getId()}}/{{tag.getSlug()}}"><span class="postTag">{{ tag.getName() }}</span></a>
    {% endfor %}
    </section>

    <section>
    <div class="-row">
        <div class="-col6"><h3 class="h6">About Us</h3></div>
        <div class="-col6"></div>
    </div>

    <p>Welcome! We are <a href="">Phanbook</a>. A non-profit, open source q&a site, discussion and blogging platform. A movement to revolutionise the world of online publishing.</p>

    <p>The blog is curated by Phanbook. Find out more here.</p>
    </section>
    {% if hotPosts is defined %}
    <section id="hot-posts">
        <div class="-row">
            <div class="-col6"><h3 class="h6">Hot Posts</h3></div>
            <div class="">
                <ul class="widget">
                    {% for hot in hotPosts %}
                        <li>{{ link_to(hot.getType() ~ '/' ~ hot.getId() ~ '/' ~ hot.getSlug(), hot.getTitle())}}</li>
                    {% endfor %}
                </ul>
            </div>
        </div><!-- hot-network-questions -->
    </section>
    {% endif %}
    <section id="try-phanbook" >
    <div class="-row">
        <a href="http://phanbook.com" class="phanbook-love widget">
        <h3>Want a blog like this? <span class="highlight">Try Phanbook</span></h3>
        <h4>The internet's most simple, most focused publishing platform</h4>
        <div class="phanbook-love-button">Test it out in seconds</div>
        </a>
    </div>
    </section>

</div>
