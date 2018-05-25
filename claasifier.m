clc;

%x1 %x2 %classes 
m=[
    
2	2	1
3	1	1
3	3	1
-1	-3	1
4	2	1
-2	-2	1
0   0   -1
-2  2   -1
-1  -1  -1
-4  2   -1
-4  3   -1
2   6   -1

];

x1 = m(:,1);
x2 = m(:, 2);
classes = m(:,3);


plot(x1(classes == 1), x2(classes == 1),'b*')


hold on;
plot(x1(classes == -1), x2(classes == -1),'r*')

title('Distribution of datapoints of classes(1,-1)');
xlabel('x1');
ylabel('x2');
xlim([-6 9]);
ylim([-4 8]);
grid on;


X=[
    
-1  -1
3   2
-2  1
8   2

];

Y1 = [mean(x1(classes == 1)) mean(x2(classes == 1))];
Y2 = [mean(x1(classes == -1)) mean(x2(classes == -1))];


plot(Y1(1), Y1(2),'b.');

plot(Y2(1), Y2(2),'r.');

for i = 1:length(X)
    
    
    g1 = X(i,:)*Y1'- 0.5*(Y1'*Y1);
    g2 = X(i,:)*Y2' - 0.5*(Y2'*Y2);
    
    disp(X(i,:)*Y1');
    
    if g1 > g2
        plot(X(i,1), X(i,2),'bs')
    else 
        plot(X(i,1), X(i,2),'rs')
        
    end
end


% Y = m *x + c

coef = Y1 - Y2; 
m = -coef(1,1)/coef(1,2);

c = 0.5*det(Y1'*Y1-Y2'*Y2)/coef(1,2);

A=[-6:2:9];

B = m*A + c;

plot(A,B,'-.b');

