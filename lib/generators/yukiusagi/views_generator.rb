module Yukiusagi
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../app/', __dir__)

      argument :directory, type: :string

      def copy_views
        copy_file "views/yukiusagi/edit.html.erb", "app/views/#{dir_name}/edit.html.erb"
        copy_file "views/yukiusagi/index.html.erb", "app/views/#{dir_name}/index.html.erb"
        copy_file "views/yukiusagi/show.html.erb", "app/views/#{dir_name}/show.html.erb"
      end

      private

      def dir_name
        directory.downcase
      end
      
    end
  end
end

