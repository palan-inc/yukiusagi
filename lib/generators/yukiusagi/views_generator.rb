module Yukiusagi
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../app/views/yukiusagi/', __dir__)

      def copy_views
        copy_file "edit.html.erb", "app/views/admin/edit.html.erb"
        copy_file "index.html.erb", "app/views/admin/index.html.erb"
        copy_file "show.html.erb", "app/views/admin/show.html.erb"
        copy_file "top.html.erb", "app/views/admin/top.html.erb"
      end
    end
  end
end

