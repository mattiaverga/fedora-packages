<!-- START Search Results -->

<div class="container_24">
  <div class="grid_24" id="search-results-table">
    <div class="grid_12 suffix_12" id="search-notes">
      <div id="grid-controls" if="filters.search!=''">
        <div class="message template" id="info_display">
           ${'${total_rows}'} results
        </div>
      </div>
    </div>
    <table id="${id}">
      <tbody class="rowtemplate">
        <tr class="priority4">
            <td>
                <span>
                    <a href="/${'${name}'}">${'${name}'}</a>
                </span>
            </td>
            <td>
                ${'${summary}'}
            </td>
        </tr>
          <!-- {{each(index, pkg) sub_pkgs}} -->
          <tr class="subpackage">
              <td><a href="/${'${name}'}">${'${pkg["name"]}'}</a></td>
              <td>${'${pkg["summary"]}'}</td>
          </tr>
          <!-- {{/each}} -->
      </tbody>
    </table>
    <div id="grid-controls">
        <div class="pager" id="pager" type="more" ></div>
   </div>
   <script type="text/javascript">
       function update_search_grid(search_term) {
            var grid = $("#${id}").mokshagrid("request_update", {"filters":{"search": search_term}});
       }
   </script>
</div>
