require 'date'
require_relative "pretty_print_num_string"
require_relative "pretty_print_date"
require_relative "pretty_print_hash"
require_relative "pretty_print_array"
require_relative "pretty_print_if_no_object"

class Prettyprinter
  def print_it_to_the_terminal(arguments)
    arguments.each do |items|
      if (items.is_a? String) || (items.is_a? Fixnum)
        PrettyPrintNumString.new.printer(items)
      elsif items.is_a? Date
        PrettyPrintDate.new.printer(items)
      elsif items.is_a? Hash
        PrettyPrintHash.new.printer(items)
      elsif items.is_a? Array
        PrettyPrintArray.new.printer(items) 
      elsif items.is_a? Object
        PrettyPrintIfNoObject.new.printer(items)
      else
        print "Error"
      end
    end
  end
end 

print_array = Prettyprinter.new.print_it_to_the_terminal(["My","The Second String", 3, Date.today, ["Pied", "Piper"],{:my_hash => "My Hash 1", :my_hash2 => "My Hash2"}, {:third_hash => "Third Hash"},["Array3", "Array4"], Object.new ])




































