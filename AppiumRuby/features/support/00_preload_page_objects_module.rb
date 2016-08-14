module PageObjectMethods
  # Turns each class in a folder into a global object.
  # Screen must have snake case file names and classes
  # with camel case versions of the same name.
  # * *Args*    :
  #   - +path+ -> file path to folder containing page objects.
  def self.setup_page_object_methods(path, platform)
    platform = 'IOS' if platform.downcase == 'ios'
    platform = 'Android' if platform.downcase == 'android'

    instances = ruby_files_in_directory("#{path}/#{platform.downcase}/pages")
    instances = instances.each { |f| file_name_to_method_syntax f }
    instances.uniq!
    instances.each do |classname|
      define_method("#{classname}") do
        eval %{
          @#{classname} ||= #{platform}#{classname.split('_').collect(&:capitalize).join}.new
        }
      end
    end
  end

  def self.ruby_files_in_directory(path)
    files = Dir.entries(path)
    files.select { |f| f.include?('.rb') }
  end

  def self.file_name_to_method_syntax(name)
    name_with_no_extension = name.gsub!('.rb', '')
    name_with_no_extension.downcase
  end
end

World(PageObjectMethods)