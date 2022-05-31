import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
from mpl_toolkits import mplot3d
from mpl_toolkits.mplot3d import Axes3D
from mpl_toolkits.mplot3d import axes3d
import seaborn as sns
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

x = y = np.linspace(-3,3,74)
X, Y = np.meshgrid(x, y)
#Z = X**2 - Y**2
R = np.sqrt(x**2 + Y**2)
Z = np.sin(4*R)/R
#ax.plot_wireframe(X,Y,Z, restride=10, cstride=10)
#fig, ax = plt.subplots(1, 3, figsize=(14,4))
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
my_cmap = plt.get_cmap('hot')

p = ax.plot_surface(X, Y, Z,cmap = my_cmap,edgecolor ='none')
plt.show()



np.random.seed(1234)
v1 = pd.Series(np.random.normal(0,10,1000), name='v1')
v2 = pd.Series(2*v1 + np.random.normal(60,15,1000), name='v2')
#v3 = pd.Series(np.random.normal(60,15,1000), name='v3')

plt.figure()

#plt.hist(v1, alpha = 0.7, bins = np.arange(-50,150,5), label = 'v1')
#plt.hist(v2, alpha = 0.7, bins = np.arange(-50,150,5), label = 'v2')
from locale import normalize
#plt.hist([v1, v2], histtype= 'barstacked', density = True)
v3 = np.concatenate((v1,v2))
sns.distplot(v3)
sns.jointplot(v1,v2, alpha = 0.4)