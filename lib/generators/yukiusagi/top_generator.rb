module Yukiusagi
  module Generators
    class TopGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../app/', __dir__)

      argument :directory, type: :string

      def copy_views
        copy_file "views/yukiusagi/top.html.erb", "app/views/#{dir_name}/top.html.erb"
        copy_file "views/yukiusagi/_header.html.erb", "app/views/#{dir_name}/shared/_header.html.erb"
        copy_file "views/yukiusagi/_sidebar.html.erb", "app/views/#{dir_name}/shared/_sidebar.html.erb"
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

