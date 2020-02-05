function [y] = zadanie3(x)
    litry = [x.*1000]
    galony = [x.*264]
    result = [x; litry; galony]'
end


%Przykladowy wektor x = [1, 3, 5]
%Dane wyjsciowe:
%result =

%1        1000         264
%3        3000         792
%5        5000        1320

%1 metr szescienny to 1000 litrow
%1 metr szescienny to 264.172052 galonow