import matplotlib.pyplot as plt #import class
x = ['100', '500', '1000'] #define 3 different scales
y1 = [27, 144, 292] #define the seconds spend in generate these records
y2 = [0.09, 0.19, 0.12] #define the seconds spend in sort these records
plt.bar(x, y1, label='generate') #draw bar plot for time spend in generate these records
plt.bar(x, y2, label='sort') #draw bar plot for time spend in sort these records
plt.legend() #display legends
plt.show() #display chart
