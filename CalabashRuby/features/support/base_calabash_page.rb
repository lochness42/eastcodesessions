class BaseCalabashPage
  def self.element(name, query_string)
    if eval "defined? #{name}"
      fail "Could not create element '#{name}' "\
              'there is already a method with this name.'
    else
      instance_eval do
        define_method name do
          query_string
        end
      end
    end
  end
end