f=open("tmpcost","r");
f1=open("tp1cost.csv","w");
for a in f:
	lisa=a.split(',');
	if(lisa[0]=='DRG Definition'):
		continue
	else:
		if len(lisa[1])==2:
			lisa[2]=lisa[2].replace('$',' ');
			lisa[3]=lisa[3].replace('$',' ');
			f1.write(str(lisa[0]+","+lisa[1]+","+lisa[2]+","+lisa[3]));

