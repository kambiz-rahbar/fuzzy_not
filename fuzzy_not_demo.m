clc
clear
close all

a = 0:0.01:1;

%% standard not
n = fuzzy_not(a, [], 'STANDARD');
figure(1);
subplot(1,3,1);
plot(a,n,'LineWidth',2);
xlabel('a');
ylabel('not(a)');
title('standard not');
grid minor;
axis square;

%% yager not
p = [eps 0.5 1 3];
subplot(1,3,2); hold on;
for k = 1:length(p)
    n = fuzzy_not(a, p(k), 'YAGER');
    plot(a,n,'LineWidth',2);
end
xlabel('a');
ylabel('not(a)');
title('yager not');
legend(num2str(p'));
grid minor;
axis square;

%% sageno not
lambda = [-1+eps, 0, 1, 1.5];
subplot(1,3,3); hold on;
for k = 1:length(lambda)
    n = fuzzy_not(a, lambda(k), 'SAGENO');
    plot(a,n,'LineWidth',2);
end
xlabel('a');
ylabel('not(a)');
title('sageno not');
legend(num2str(lambda'));
grid minor;
axis square;