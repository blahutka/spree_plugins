Deface::Override.new(:virtual_path => 'spree/products/show',
  :original => '8e387c4a3c4faaaa263c02959a767c182d69dfb7',
  :name => 'add_scripts_css_tag_content_to_products',
  :insert_after => "#product-description",
  :text => "
      <% Spree::Plugin.all.each do |plugin| %>
        <% if plugin.state == 'ACTIVE' %>
            <div class='<%= plugin.css %>' div-move='<%= plugin.css.empty? %>'><%= raw plugin.code %></div>
        <% end %>
      <% end %>
      <!-- <script> $(document).ready(function() {
          $('[div-move=\"false\"]').each(function() {
            debugger
            $($(this).detach()).appendTo('#'+$(this).attr('class'));
          });
        });
      </script> -->
  ")