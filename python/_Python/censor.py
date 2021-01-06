def censor(text, word):
    words = text.split()
    for index,w in enumerate(words):
        if (w == word):
            words[index] = "*" * len(word)
    return(" ".join(words))