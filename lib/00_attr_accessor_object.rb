require 'byebug'

class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |ivar|
       define_method("#{ivar}"){instance_variable_get("@#{ivar}") }
       define_method("#{ivar}="){ |i| instance_variable_set("@#{ivar}", i) }
    end

  end
end

# class AnimalConstructor
#   def self.be_a_god(species, sound)
#     Object.const_set(species, Class.new{ define_method("#{sound}") {puts "#{sound}"} })  
#   end
# end



# 4:32 PM
