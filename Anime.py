import numpy as np
import pandas as pd
import matplotlib as plt
import matplotlib.pyplot as mpl
from mpl_toolkits.mplot3d import axes3d

import pandas as pd
import numpy as np

anime_file = pd.read_csv('anime.csv') 
anime_file = anime_file.replace({'?': -1}).replace({-1 : np.nan})

anime_file.columns = anime_file.columns.str.lower()

anime_file['voters'] = anime_file['voters'].str.replace(',', '')
#anime_file['voters'].astype('Int64')

#anime_file.head()
#anime_file.info()
anime_file
anime_file['voters'] = anime_file['voters'].astype(int)

anime_file['episodes'] = anime_file['episodes'].astype(float)

anime_stat = anime_file.describe()

anime_file = pd.read_csv("anime.csv")
anime_file.loc[(anime_file['Episodes'] == '?'), 'Episodes'] = np.nan
anime_file.head(10)
print(anime_file.columns, anime_file.dtypes)
anime_file.columns = anime_file.columns.str.lower()
print("rating:")

print(anime_file['rating'].describe())

anime_file['voters'] = anime_file['voters'].str.replace(',','')
anime_file['voters'] = anime_file['voters'].astype(int)
print(anime_file['voters'].describe())

anime_file['episodes'] = anime_file['episodes'].astype(float)
print(anime_file['episodes'].describe())

genresList = list(anime_file['genre'].str.split(','))
genres = dict()
listGeneres = sum(genresList, [])
fig, ax = mpl.subplots()
fig.set_figwidth(22)
fig.set_figheight(6)
ax.bar(list(sorted(set(listGeneres))), [listGeneres.count(x) for x in sorted(set(listGeneres))], 1, 50)

fig2, bx = mpl.subplots()
fig2.set_figwidth(40)
fig2.set_figheight(10)

company = dict((x, list(anime_file['production']).count(x)) for x in set(anime_file['production']))
sorted_company = sorted(company.items(), key=lambda x: x[1])
print(dict(sorted_company))
bx.bar(dict(sorted_company).keys(), dict(sorted_company).values())
mpl.xticks(rotation=90)

fig3, cx = mpl.subplots()
fig3.set_figwidth(40)
fig3.set_figheight(10)


ep = dict((x, list(anime_file['episodes'].dropna()).count(x)) for x in set(anime_file['episodes'].dropna()))
ep_sorted = sorted(ep.items(), key=lambda x: x[0])
print(ep_sorted)
cx.bar(dict(ep_sorted).keys(), dict(ep_sorted).values())