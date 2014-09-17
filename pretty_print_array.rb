class PrettyPrintArray
  def printer(argument)
    puts "\tArray1:"
    argument.each do |ele|
      print "\t\t#{ele}\n"
    end
  end
end