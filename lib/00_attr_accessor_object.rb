require 'byebug'

class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |ivar|
       define_method("#{ivar}"){instance_variable_get("@#{ivar}") }
       define_method("#{ivar}="){ |i| instance_variable_set("@#{ivar}", i) }
    end

  end
end

