% Name: Terrado, Luke Nelson
% Section: 2ECE-A

%Transpose Operation
%Given Values
R = [5 -2  0 7; 1 3 -4 2; 6 0 8 -1]
Z = [2+3i, -1+4i, 5-2i; -3+i, 6, 2+5i]
%Transpose Operation
%%transpose(R)
trans_R = transpose(R)
apos_R = R'
element_R = R.'
%%transpose(Z)
trans_Z = transpose(Z)
apos_Z = Z'
element_Z = Z.'

%Two Method For Linear System
%Given
A = [2, -1, 3, 2; 1, 4, -2, 1; 3, 2, 1, -1;
    -2, 3, 4, 2]
b = [16; -7; 6; 7] %Coefficient Matrix

%Inverse Method
x_inv = inv(A) * b; 

%Cramer's Rule
detA = det(A);

if detA == 0
    error('Cramer''s rule cannot be used.');
end

A1 = A;
A1(:,1) = b;

A2 = A;
A2(:,2) = b;

A3 = A;
A3(:,3) = b;

A4 = A;
A4(:,4) = b;

x_cramer = [det(A1); det(A2); det(A3); det(A4)] / detA;

%Answer for Inverse
disp('Answer for Inverse Method')
disp(x_inv)

%Answer for Cramer's
disp('Answer for Cramer''s Rule')
disp(x_cramer)

%Norm Checks
disp('norm(x_inv - x_cramer)')
disp(norm(x_inv - x_cramer))

disp('norm(A*x_inv - b)')
disp(norm(A*x_inv - b))