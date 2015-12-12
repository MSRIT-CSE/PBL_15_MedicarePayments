%Read contents of file and perform K-means algorithm

%fid input file and fout is output file
%number of rows is to be determined

fid=fopen("WY.csv",'r');
fout=fopen("WYout.csv","w");

kmean=[zeros(11,1)];
tline=fgets(fid);
cnt=1;
while ischar(tline)
	tmp=strsplit(tline,',');
	val=str2double(tmp{1});
	val2=str2double(tmp{2});
	%disp(val);
	kmean(cnt,1)=val;
	kmean(cnt,2)=val2;	
	tline=fgets(fid);
	cnt=cnt+1;
end
%disp(kmean);

X=kmean(:,1);
Y=kmean(:,2);
disp(size(X));
disp(size(Y));
plot(Y,'*');
%plot(kmean,'*');
resul=kmeans(kmean,3);

%disp(resul);

C=[kmean,resul];
disp(C);
%fprintf(fout,"%d,%d,%d",C);
dlmwrite(fout,C,',');
fclose(fout);
