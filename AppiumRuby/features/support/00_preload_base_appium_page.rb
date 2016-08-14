class BaseAppiumPage
    def find_by_name(name)
      find_element(:name, name)
    end

    def find_by_id(id)
      find_element(:id, id)
    end

    def self.element(name, identifier_type, identifier_value)

      if eval "defined? #{name}"
        fail "Could not create element '#{name}' "\
              'there is already a method with this name.'
      else
        instance_eval do
          define_method name do
            case identifier_type
              when :id
                find_by_id(identifier_value)
              when :name
                find_by_name(identifier_value)
              else
                find_element(:xpath, identifier_value)
            end
          end
        end
      end
    end

end
