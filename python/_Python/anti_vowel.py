def anti_vowel(text):
    result = ""
    for c in text:
        if (not c in "aeiouAEIOU"):
            result += c
    return result