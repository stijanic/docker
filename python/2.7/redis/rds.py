'''
Created on Dec 28, 2015

@author: stijanic
'''

import redis

r = redis.Redis(host='localhost')
r.set('foo', 'bar')
value = r.get('foo')
print value

r.set('yo', 'go')
value = r.get('yo')
print value