# INTRODUCTION TO MATLAB PROGRAMMING
#### Terrado, Luke Nelson R.
#### 2ECE-A
-------------------------
## Description
MATLAB, short for Matrix Laboratory, is a high-level programming language and interactive computing platform. This activity teaches basic mathematical operations, as well as real and complex matrices. 

## Intended Learning Outcome
At the end of this laboratory activity, the student should be able to:
1. create real and complex matrices in MATLAB;
2. distinguish transpose from complex-conjugate transpose operations;
3. express a simultaneous linear system in matrix form; and
4. solve and check a linear system using the inverse method and Cramer’s Rule.

---------------------------------
## A. TRANSPOSE OPERATIONS
Define the following matrices exactly as shown:
```matlab
R = [5 -2  0 7; 1 3 -4 2; 6 0 8 -1]
Z = [2+3i, -1+4i, 5-2i; -3+i, 6, 2+5i]
```

### ⚡ Code
```matlab
%%transpose(R)
trans_R = transpose(R)
apos_R = R'
element_R = R.'
%%transpose(Z)
trans_Z = transpose(Z)
apos_Z = Z'
element_Z = Z.'
```
### 🖨️ Output
<img width="179" height="486" alt="image" src="https://github.com/user-attachments/assets/06f7aa63-9f72-4b6b-acab-fc6a7a375785" />

### ❓ Questions
#### a. Which operations give identical results for the real matrix R?
- For the real matrix R, all three operations show identical results. This occurs because matrix R contains only real numbers with no imaginary components.
#### b. Which two operations give identical results for the complex matrix Z?
- For the complex matrix Z, the **transpose(Z)** operation and the **Z.'** gives the same results. This is because both operations perform a standard non-conjugate transpose. These operations flip the matrix's rows and columns without changing the signs of the imaginary numbers.
#### c. What additional operation is performed by the apostrophe operator ’ when the matrix contains complex entries?
- When the matrix contains complex entries, the apostrophe operator (Z') performs complex conjugation. This means flipping the matrix dimensions and changing the sign of the imaginary parts.

--------------------------------
## B. TWO METHODS FOR A LINEAR SYSTEM
Solve the simultaneous system
```matlab
%Given
A = [2, -1, 3, 2; 1, 4, -2, 1; 3, 2, 1, -1;
    -2, 3, 4, 2]
b = [16; -7; 6; 7] %Coefficient Matrix
```

## 1. Inverse Method
### ⚡ Code
```matlab
%Inverse Method
x_inv = inv(A) * b;

%Answer for Inverse
disp('Answer for Inverse Method')
disp(x_inv)
```
### 🖨️ Output
<img width="237" height="108" alt="image" src="https://github.com/user-attachments/assets/066d9769-e39b-41f6-b3b7-1325e36ef42d" />

### Explanation
The inverse method solves a system of linear equations in the matrix form A * X = B by multiplying the constant vector by the inverse of the coefficient matrix. The code reverses the scaling of matrix A to find the exact values of the unknown variables.

## 2. Cramer's Rule
### ⚡ Code
```matlab
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

%Answer for Cramer's
disp('Answer for Cramer''s Rule')
disp(x_cramer)
```
### 🖨️ Output
<img width="229" height="107" alt="image" src="https://github.com/user-attachments/assets/7e118c13-d514-4f31-988f-3d51ef6d75d4" />

### Explanation
Cramer's Rule solves a system of linear equations by first checking if the coefficient matrix is valid using its determinant. It then creates modified copies of the matrix by replacing each column sequentially with the constant vector b. Finally, it divides the determinant of each modified matrix by the determinant of the original matrix to compute the values of the unknown variables.

## 3. Norm Checks
### ⚡ Code
```matlab
%Norm Checks
disp('norm(x_inv - x_cramer)')
disp(norm(x_inv - x_cramer))

disp('norm(A*x_inv - b)')
disp(norm(A*x_inv - b))
```
### 🖨️ Output
<img width="206" height="110" alt="image" src="https://github.com/user-attachments/assets/c6b63b59-db4f-49e7-807e-34a392756fed" />

----------------------------------
### Changes
1. Added Description and Detailed Information (10/27/2026)
2. Uploaded the MATLAB file (10/27/2026)





