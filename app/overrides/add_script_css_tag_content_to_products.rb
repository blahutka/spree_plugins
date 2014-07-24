Deface::Override.new(:virtual_path => 'spree/products/show',
  :original => '8e387c4a3c4faaaa263c02959a767c182d69dfb7',
  :name => 'add_scripts_css_tag_content_to_products',
  :insert_after => "#product-description",
  :text => "
      <% Plugins.all.each do |plugin| %>
        <div class='<%= plugin.css %> content'><%= plugin.code %></div>
      <% end %>
  ")