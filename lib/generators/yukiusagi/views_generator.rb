module Yukiusagi
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../app/', __dir__)

      argument :directory, type: :string

      def copy_views
        copy_file "views/yukiusagi/edit.html.erb", "app/views/#{dir_name}/edit.html.erb"
        copy_file "views/yukiusagi/index.html.erb", "app/views/#{dir_name}/index.html.erb"
        copy_file "views/yukiusagi/show.html.erb", "app/views/#{dir_name}/show.html.erb"
        copy_file "views/yukiusagi/top.html.erb", "app/views/#{dir_name}/top.html.erb"
        copy_file "assets/images/dammy.png", "app/assets/images/yukiusagi/dammy.png"
        copy_file "assets/images/logo.svg", "app/assets/images/yukiusagi/logo.svg"
        copy_file "assets/images/prof.png", "app/assets/images/yukiusagi/prof.png"
      end

      private

      def dir_name
        directory.downcase
      end
      
    end
  end
end

