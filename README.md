# MinimumDistanceToClassMeanClassifier
### AHSANULLAHUNIVERSITY OF SCIENCE AND

### TECHNOLOGY

#### EXPERIMENT 1

## Designing a minimum distance to

## class mean classifier

##### Author:

##### Naimul Haque

##### Roll:

##### 14.02.04.080 (B1)

##### Submission date: May 26,


# Designing a minimum distance to

# class mean classifier

##### Naimul Haque,14.02.04.080,

##### Ahsanullah University of Science and Technology

```
F
```
##### 1 OBJECTIVE

The objective of this experiment is to design a
classifier, that predicts the class of a given data
point, using minimum distance to class mean
model.

In order to do this we will set up a problem
by defining as follow:
Given the following two-class set of prototypes

ω 1 ={(2,2),(3,1),(3,3),(− 1 ,−3),(4,2),(− 2 ,−2)}

ω 2 ={(0,0),(− 2 ,2),(− 1 ,−1),(− 4 ,2),(− 4 ,3),(2,6)}

```
1) Plot all sample points from both classes,
but samples from the same class should
have the same color and marker.
2) Using a minimum distance classifier
with respect to ‘class mean’, classify the
following points by plotting them with
the designated class-color but different
marker.
```
```
X1 = (− 1 ,−1)
X2 = (3,2)
X3 = (− 2 ,1)
X4 = (8,2)
```
```
Linear Discriminant Function:
```
```
gi(x) =μtx−^12 μtiμi
```
```
3) Draw the decision boundary between the
two-classes.
```
##### 2 INTRODUCTION

```
Linear discriminant functions, despite being
their simplicity, have pleasant analytical
properties. A discriminant function is a linear
combination of the components of x can be
written as :
```
```
g(x) =wtx+w 0
```
```
where w is the weight vector and w 0 the
bias or threshold weight.
```
```
The minimum distance to class mean classifier
uses the following discriminant form :
```
```
gi(x) =μtx−^12 μtiμi
```
```
where gi is the linear response and μi is
mean point for the feature points inith class.
The decision rule can be set up for a two class
problem as :
```
```
if g 1 (x)> g 2 (x) then
x∈ω 1
else
x∈ω 2
end if
wherex∈ω 1 andx∈ω 2 are the classes.
```
```
The decision boundary for this problem:
```
```
y=mx+c
```
```
where
```

m=−μ

(^11) −μ (^12)
μ^21 −μ^22
and
c=^12 |μ
t 1 μ 1 −μt 2 μ 2
μ^21 −μ^22 |
The limitation of the model is that it can
not classify the points that are on this decision
boundary.

##### 3 EXPERIMENTAL DESIGN AND IMPLE-

**MENTATION**

In our experiment, class 1 and class 2 are
visualized by color Blue and Red respectively.
The data points are plotted in a graph in x 1
and x 2 feature space with their respective
class color. These data points are also marked
with ‘asterisk’(*) to indicate that they are the
training data.

The mean points, μ 1 and μ 2 for class 1
andclass 2 respectively, are calculated and are
also plotted with ’dot’(.) in the graph.

The discriminant value g 1 (x) and g 2 (x)
are calculated for all the testing pointsxand
using the decision rule algorithm, discussed
in the introduction section, the points are
also plotted in respective class color but with
‘square’ marker.

To visualize more, the decision boundary
is plotted in the graph by calculating the slope
and constant of the discriminant function
g(x) = 0.

The classifier is implemented by MATLAB
R2013a language. The code is given in the
Appendix A section.

##### 4 RESULT ANALYSIS

The graph developed using the dataset and
classifier is shown below:

Figure 1 shows a boat that new data points
are classified correctly and are plotted in re-
spective class color in ’square’ marker.

```
Figure 1. The Result
```
##### APPENDIXA

##### CODE

```
The MATLAB code for designing a minimum
distance to class mean classifier :
clc;
```
```
%x1 %x2 %classes
m=[
```
```
2 2 1
3 1 1
3 3 1
-1 -3 1
4 2 1
-2 -2 1
0 0 -
-2 2 -
-1 -1 -
-4 2 -
-4 3 -
2 6 -
```
```
];
```
```
x1 = m(:,1);
x2 = m(:, 2);
classes = m(:,3);
```
```
plot(x1(classes == 1), x2(classes
== 1),'b*')
```

hold on;
plot(x1(classes == -1), x2(classes
== -1),'r*')

title('Distribution of datapoints
of classes(1,-1)');
xlabel('x1');
ylabel('x2');
xlim([-6 9]);
ylim([-4 8]);
grid on;

###### X=[

###### -1 -

###### 3 2

###### -2 1

###### 8 2

###### ];

Y1 = [mean(x1(classes == 1)) mean(
x2(classes == 1))];
Y2 = [mean(x1(classes == -1)) mean(
x2(classes == -1))];

plot(Y1(1), Y1(2),'b.');

plot(Y2(1), Y2(2),'r.');

for i = 1:length(X)

```
g1 = X(i,:)*Y1'- 0.5*(Y1'*Y1);
g2 = X(i,:)*Y2' - 0.5*(Y2'*Y2);
```
```
disp(X(i,:)*Y1');
```
```
if g1 > g
plot(X(i,1), X(i,2),'bs')
else
plot(X(i,1), X(i,2),'rs')
```
end
end

```
% Y = m *x + c
```
```
coef = Y1 - Y2;
m = -coef(1,1)/coef(1,2);
```
```
c = 0.5*det(Y1'*Y1-Y2'*Y2)/coef
(1,2);
```
```
A=[-6:2:9];
```
```
B = m*A + c;
```
```
plot(A,B,'-.b');
```


