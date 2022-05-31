from collections import Counter
import math
import matplotlib as mpl
import matplotlib.pyplot as plt

with open('orwell_1984.txt', encoding = 'utf8') as file:
  words_lenghts_counter = Counter(len(word) for word in file.read().split())

words_lenghts_counter


fig = plt.figure()
ax = fig.add_subplot(111)

ax.set_xlim([0,30])
ax.set_ylim([0,40000])
ax.set_xlabel("x")
ax.set_ylabel("y")

longestWordLength = max(words_lenghts_counter)

histogram = [words_lenghts_counter[wordLen] for wordLen in range(1, longestWordLength + 1)]

plt.hist(list(range(1, longestWordLength + 1)), weights = histogram, bins=longestWordLength+1, orientation='vertical')