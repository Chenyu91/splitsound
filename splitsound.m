function splitsound(filename)
[data, fs] = audioread(filename);
A = data(:,1);
D(1) = 1;
j = 2;    k = 0; 
for ii = 1:length(A)
    if abs(A(ii)) < 1e-3
        k = k+1;
    if  A(ii) ~= 0 && k > 30000
        D(j) = ii;
        k = 0;
        j = j+1;
    end
    end
end
tt = 1;
while tt < length(D)
        sound(A(D(tt):D(tt+1)),fs)
        tt
    flag = input('put a to listen again and put other key to listen next sentence:','s');
    if ~strcmp(flag,'a')
        tt = tt+1;
    end
end
