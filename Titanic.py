from pandas.core import apply
import pandas as pd

file = pd.read_csv('titanic.csv') 

#file.info();

#sorted_file = file.sort_values(by='Fare')

#sorted_file.head(15)

table_1 = file[['Sex', 'Age']]
#table_1.head()

file['Relative'] = (file.SibSp+file.Parch).apply(bool)


file[file.Embarked == 'S'].shape[0]

count_class = [0,0,0];
for i in range(3):
  count_class[i] = file[file.Pclass == i+1].shape[0]

print(count_class)

count_death = file[file.Survived == 0].shape[0]

count_survived = file.shape[0] - count_death;

print(count_death, " ", count_survived)

count_death_m = file.query('Survived == 0 and Sex == "male"').shape[0]
count_surv_m = file.query('Survived == 1 and Sex == "male"').shape[0]
count_death_fm = file.query('Survived == 0 and Sex == "female"').shape[0]
count_surv_fm = file.query('Survived == 1 and Sex == "female"').shape[0]



print(count_death_m, " ", count_surv_m, " ", count_death_fm, " ", count_surv_fm)

import numpy as np
pivot_surv_age = pd.pivot_table(file[['Survived', 'Sex', 'Age']], index = "Sex", columns= "Survived", values = "Age", aggfunc = 'mean')
pivot_surv_class = pd.pivot_table(file[['Survived', 'Age', 'Pclass']], index = "Pclass", columns= "Survived", values = "Age", aggfunc = 'mean')

file.groupby('Survived').agg({'Age': np.mean, 'PassengerId':"count"})
print(file.query('Survived == 0 and Pclass == "2"')['Age'].mean())

