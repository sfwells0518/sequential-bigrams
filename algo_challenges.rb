# # Prompt 1: Sequential Bi-grams # #

# Solve an algorithm challenge with given inputs/outputs and/or automated tests #

# Sequential Bi-grams
# Given a string of words, create a set of every sequential bi-gram.  Bigrams are two-word combinations of the text, i.e. “Charlie rocks”.

# # Example: # #

# "Make a killer impression on whoever you’re meeting."
# returns
# “Make a"
# “a killer"
# “killer impression"
# “impression on"
# Etc.

# # Requirements: # #
# Generates a set of every possible bigram from a string of text
# Keep performance & memory usage in mind
# Include tests
# We prefer Ruby or Python, but you may use any language.

# --------------------------------------------------------------------------------

# # Prompt 1 Decomposition # # 

# 1. research sequential bi-grams
# 2. determine function containing string of words that make up a sentence
# 3. determine the expected outputs (all two-word combinations from string of words)
# 4. determine method that could be used to achieve/return expected outputs within the function 
# 5. determine loop that will be used within function

# ---------------------------------------------------------------

## Prompt 1 Code (Ruby): ## 

string_sentence = "My name is Sam Wells" # this line defines the initial string sentence

def create_bigrams(string_sentence) # defining function that takes in argument for string_sentence
  words = string_sentence.split(' ') # this line takes the input of the sentence and splits it into an array of words. Split method breaks up the string into pieces wherever there is a space character, hence (' ') and creates an array with these pieces. Each element of the words array is a single word from the original sentence
  bigrams = [] # this line initializes an empty array called bigrams. It will ultimately be used to store the bigrams generated from the sentence.
  words.each_cons(2) { |bigram| bigrams << bigram.join(' ') } # this line is where the bigrams are actually created. the each_cons(2) method is called on the words array, which generates all consec pairs of words from the array. For each pair of words, it joins the words together into a sing string with space between, and adds this string to the bigrams array. 
  return bigrams # this line returns the bigrams array
end

p create_bigrams(string_sentence)  # this line prints the bigram created from the initial string sentence







