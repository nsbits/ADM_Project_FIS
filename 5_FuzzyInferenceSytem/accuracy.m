a = readmatrix('discretised_dataset.csv')
f = readfis('heart_adm.fis')
for i = 1:299
	k = evalfis([a(i,2),a(i,3),a(i,4),a(i,5),a(i,6),a(i,7),a(i,8)],f)
	if k< 0.5
		a(i,9) = 0
	else
		a(i,9) = 1
    end
end
	
b = readmatrix('ashwaq1.csv')
count = 1
for i=1:299
	exp = b(i,9)
	pred = a(i,9)
	if exp == pred
		count = count+1
    end
end

acc = (count/299)*100
disp(acc)