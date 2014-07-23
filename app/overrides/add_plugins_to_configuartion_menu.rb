Deface::Override.new(:virtual_path => 'spree/admin/shared/_configuration_menu',
  :original => 'd5bb0b93a7d96a7608f35dc84558657db5753a35',
  :name => 'add_plugins_to_configuration_menu',
  :insert_bottom => ".sidebar",
  :text => "
      <%= configurations_sidebar_menu_item Spree.t(:add_plugins), admin_trackers_path %>
  ")