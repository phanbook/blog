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

    {#% for post.tag in tag %}
    <a href="{{ site.baseurl }}/tags/{{ tag.slug }}/"><span class="postTag">{{ tag.name }}</span></a>
    {% endfor %#}
    </section>

    {#<section>
    <div class="-row">
        <div class="-col6"><h3 class="h6">Contributors</h3></div>
        <div class="-col6 _textRight"><p><a href="{{ site.baseurl }}/authors/">See all</a></p></div>
    </div>
    {% include authors.html %}
    </section>

    <section>
    <div class="-row">
        <div class="-col6"><h3 class="h6">About Us</h3></div>
        <div class="-col6"></div>
    </div>

    <p>Welcome! We are <a href="https://stackoverflow.com/">Stack Overflow</a>, home of <a href="http://stackexchange.com/">Stack Exchange</a>, <a href="https://careers.stackoverflow.com/">Stack Overflow Careers</a>, and <a href="http://stackexchange.com/sites">over 100 Q&amp;A sites</a>. In addition to writing a lot of code, we like to write about our coding experiences and other things we’re doing, both at the company and in the tech space as a whole.</p>

    <p>If you’d like to keep up with company initiatives and other happenings at Stack Overflow, check out the Company News channel. If you want to learn about some of our coding projects, mishaps, and other tech details, explore the Engineering channel.</p>#}
</div>