function x = frobenius(A)         %function declaration
Rows = 0;                         %setting variable to 0
Coloums = 0;
Sum = 0;
[Rows,Coloums] = size(A);         %saving the deminions of matrix
for i=1:Rows                   
    for j=1:Coloums               %interating over the whole matrix
        Sum  = Sum + (A(i,j)^2);  %adding its square to the total sum
    end
end
x = sqrt(Sum)                    %setting final value value of x as squareroot of whole sum
