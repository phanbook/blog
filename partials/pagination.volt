{% if totalPages is defined  and totalPages > 1 %}
    {% set startIndex = 1, paginatorUri = this.router.getRewriteUri() == '/' ? 'posts' : this.router.getRewriteUri() %} <!-- start index 1..5 -->
    <div class="pagination">
    <div class="inner-container">
        <div class="-row">
          <div class="-col2 _textLeft">
          {% if currentPage < totalPages %}
            {% set next = currentPage + 1 %}
              <a class="page older" href="{{ paginatorUri ~ '?page=' ~ next }}"><i class="blog-icon left-arrow"></i> Older Articles</a>
          {% endif %}
            </div>
          <div class="-col2 _textRight">
          {% if currentPage > 1 %}
            {% set prev = currentPage - 1 %}
            <a class="page newer" href="{{ paginatorUri ~ '?page=' ~ prev }}">
            Newer Articles <i class="blog-icon right-arrow"></i></a>
          {% endif %}
          </div>
        <div class="-col8 _textRight">
            <span class="page_number">Page <span class="page current_page">
              {{ startIndex }}</span> of <span class="page total_pages">{{ totalPages }}</span>
              </span>
            </div>
        </div>
    </div>
</div>
{% endif %}