import csv
with open('xtest.csv', 'rb') as f:
	reader = csv.reader(f)	
	out = open('test_out', 'w+')
	for row in reader:
		out.write('2')
		counter = 1
		for word in row:
			out.write(' ')
			out.write(str(counter))
			out.write(':')
			out.write(word)
			counter = counter + 1
		out.write('\n');
	out.close()
