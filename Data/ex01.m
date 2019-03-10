newt = rgb2gray(imread('duck.jpg'));
figure;
subplot(2,1,1);
subimage(newt);
no_of_level = 3; %% This is the variable
no_of_level = 2 ^ (no_of_level-1) ;
x = 256 / no_of_level;

[n, m] = size(newt);

for i = 1:n
    for j = 1:m
        modX = mod(newt(i,j) , x );
        disp(newt(i,j));
        if( modX >= (x/2) )
            disp(newt(i,j));
            disp(x-modX-1 + newt(i,j));
            newt(i,j) = x - modX - 1 + newt(i,j);
            
        else 
            newt(i,j) = newt(i,j) - modX;
        end
        disp(newt(i,j));
    end
end

subplot(2,1,2);
subimage(newt);


        
