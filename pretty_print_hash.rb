class PrettyPrintHash
  def printer(argument)
    puts "\n\tHash:\n"
    argument.each do |hash_key, hash_value|
      print "\t\t#{hash_key}" + " -> " + "#{hash_value}\n"
    end
  end
end