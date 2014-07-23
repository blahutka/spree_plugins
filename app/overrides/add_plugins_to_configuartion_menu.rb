Deface::Override.new(:virtual_path => 'spree/admin/shared/_configuration_menu',
  :original => '109fc280195116218c289dbc0a2f5c74a0887f55',
  :name => 'add_plugins_to_configuration_menu',
  :insert_bottom => ".sidebar",
  :text => "
      <%= configurations_sidebar_menu_item Spree.t(:add_plugins), admin_trackers_path %>
  ")