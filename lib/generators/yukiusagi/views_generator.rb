module Yukiusagi
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../app/views/yukiusagi/', __dir__)

      argument :directory, type: :string

      def copy_views
        copy_file "edit.html.erb", "app/views/#{dir_name}/edit.html.erb"
        copy_file "index.html.erb", "app/views/#{dir_name}/index.html.erb"
        copy_file "show.html.erb", "app/views/#{dir_name}/show.html.erb"
        copy_file "top.html.erb", "app/views/#{dir_name}/top.html.erb"
      end

      private

      def dir_name
        directory.downcase
      end
      
    end
  end
end

