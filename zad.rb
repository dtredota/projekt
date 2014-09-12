def sortuj(tablica)
licz = tablica.size-1

while licz >= 0
     0.upto(tablica.size-2) do |i|
         if tablica[i] > tablica[i+1]
            tablica[i], tablica[i+1] = tablica[i+1], tablica[i]
         end
      end 
licz = licz -1
end

return tablica
end


puts sortuj([4,3,2,6,9,11,34,])
