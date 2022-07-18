function x = frobenius(A)         %function declaration
Rows = 0;                         %setting variable to 0
Coloums = 0;
Sum = 0;
[Rows,Coloums] = size(A);         %saving the deminions of matrix
upbound = 0
downbound = 0
while 2^upbound ~= inf            %Finding upper bound for double 
    upbound = upbound + 1
end
while 2^-downbound ~= 0
    downbound = downbound + 1  %Finding lower bound for double variable 
end
downbound = downbound - 1
upbound = upbound - 1
for i=1:Rows                   
    for j=1:Coloums               %interating over the whole matrix
        if A(i,j) > sqrt(2^upbound)
            Sum  = Sum + (2^upbound);       % making the max amount to be the upper bound
        elseif A(i,j) < sqrt(2^-downbound)
            Sum  = Sum + (2^-downbound);   % making the min amount to be the lower bound
        else
            Sum  = Sum + (((A(i,j))^2));  % If nothing just do simple square and add
        end
    end                                  
end                                     
x = sqrt(Sum)                    %setting final value value of x as squareroot of whole sum