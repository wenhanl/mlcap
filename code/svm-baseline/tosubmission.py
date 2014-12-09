wf = open('submit.csv', 'w+')
rf = open('libsvm/result', 'r+')
counter = 1
wf.write('Id,Category\n')
for line in rf:
	wf.write(str(counter) + ',' + line)
	counter = counter + 1

rf.close()
wf.close()
