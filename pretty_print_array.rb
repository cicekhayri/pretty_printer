class PrettyPrintArray
  def printer(argument)
    puts "\tArray:"
    argument.each do |ele|
      print "\t\t#{ele}\n"
    end
  end
end