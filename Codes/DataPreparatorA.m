%% Code description:
% Author: Jair
% Date: 1.11.21
% Version: 1.0

%% Import data from the Excel file
data = readtable('Data_ANN_2021_cw.xlsx','Range','C4:E73');

%% Convert the rough data into vectors
% Conversion
x1 = data{:,1};
x2 = data{:,2};
y = data{:,3};

%% Plot the data in a 3D enviroment 
% Plot
figure(1);
stem3(x1, x2, y);
grid on;

%% Create a mesh grid to construct a continous surface to plot
% Sensibility of the grid
x1v = linspace(min(x1), max(x1), 100);
x2v = linspace(min(x2), max(x2), 100);

% Grid vectors
[X1,X2] = meshgrid(x1v, x2v);
Y = griddata(x1,x2,y,X1,X2);

% Plot
figure(2);
surf(X1, X2, Y);
grid on;

%% Eliminate out of range values
% Counter of eliminated values
n = 0;

% Loop
for i = 1:length(x1)
    if (y(i-n)<0)
        y(i-n)=[];
        x1(i-n)=[];
        x2(i-n) = [];
        n=n+1;
    end
end

%% Eliminate duplicate values, as well as no-continous data behavior
% Initialize variables
point1= 0;
m = 0;
values = [];

% Loop
for j = 1:length(x1)
    if (x1(j-m)~=point1)
        point1 = x1(j-m);
        values = [];
        k = 1;
    end
    if (x1(j-m) == point1)
        values(k)=x2(j-m);
        k=k+1;
        if (k>3 && j-m>1)
            for l = 1:(k-2)
                if (values(k-1)== values(l))
                    y(j-m)=[];
                    x1(j-m)=[];
                    x2(j-m) = [];
                    m=m+1;
                end
            end
       if (((j-(m+2))>1)&&(sign(y(j-(m+2))-y(j-(m+1)))~=sign(y(j-(m+1))...
           -y(j-(m)))))
            y(j-m)=[];
            x1(j-m)=[];
            x2(j-m) = [];
            m=m+1;
        end
        end
    end
end
y(10)=[];
x1(10)=[];
x2(10) = [];

%% Plot new data

% Plot data
figure(3);
stem3(x1, x2, y);
grid on;

% Create the surface
x1v = linspace(min(x1), max(x1), 100);
x2v = linspace(min(x2), max(x2), 100);
[X1,X2] = meshgrid(x1v, x2v);
Y = griddata(x1,x2,y,X1,X2);

% Plot surface
figure(4);
surf(X1, X2, Y);
grid on;

%% Select training and test data
% Initialize variables
ss = 18;
sample = [];
counter = 1;
counter2 = 1;
test = [];

% Loop
tolerance = .2;

for h = 1:length(x1)
    if ((counter<=ss)&&(x1(h)<(1-tolerance)*max(x1))&&(x1(h)>...
            (1+tolerance)*min(x1))&&(x2(h)< (1-tolerance)*max(x2))&&...
            (x2(h)>(1+tolerance)*min(x2))&&(y(h)<(1-tolerance)*max(y))&&...
            (y(h)> (1+tolerance)*min(y)))
        test(counter,1) = x1(h);
        test (counter,2) = x2(h);
        test(counter,3) = y(h);
        counter = counter + 1;
    else
        sample(counter2,1) = x1(h);
        sample(counter2,2) = x2(h);
        sample(counter2,3) = y(h);
        counter2 = counter2 + 1;
    end   
end

%% Create new file with training and test data
%FileName = 'DataJair2.xlsx';
%xlswrite(FileName ,sample,'Train');
%xlswrite(FileName ,test,'Test');
