# [::-1] / reversed
def reverse(text):
    result = ""
    for i in range(0, len(text)):
        print(i)
        result = text[i] + result
    return result