def print_interface

puts "[1] Dodaj zadanie"
puts "[2] Usuń zadanie"
puts "[3] Wyświetl zadania"
puts "[4] Edytuj zadania"
puts "[5] Wyjście"
print "Wybierz opcję:"
return gets.chomp
end
def dzialanie 
selected = print_interface
case selected
when "1"
      print "Podaj nazwę zadania: "
      $lista_zadan <<<< gets.chomp
      
when "2"
      $lista_zadan.to_enum.with_index(0).each do |elem, i|
      puts "#{i}: #{elem}"
      end
    print "Wpisz numer zadania do usunięcia: "
      $lista_zadan.delete_at(gets.chomp.to_i)

when "3"
  $lista_zadan.each do |task|
  puts task
  end
when "4" f
      $lista_zadan.to_enum.with_index(0).each do |elem, i|
      puts "#{i}: #{elem}"
      end
    print "Wpisz numer zadania do edycji: "
      edytowane_zadanie = (gets.chomp.to_i)
      puts ""
      print "Wpisz nową nazwę dla zadania #{$lista_zadan[edytowane_zadanie]}: "
      $lista_zadan[edytowane_zadanie] = gets.chomp
when "5"
  exit  
else
  puts "Opcja niepoprawna!. Wybierz ponownie"
end
dzialanie
end
dzialanie