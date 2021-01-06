import json
import requests

loginInfo = json.load(open('login.json'))
username = loginInfo['username']
password = loginInfo['password']
consumer_key = loginInfo['consumer_key']
consumer_secret = loginInfo['consumer_secret']
security_token = loginInfo['security_token']
organization_id = loginInfo['organization_id']

payload = {
    'grant_type': 'password',
    'client_id': consumer_key,
    'client_secret': consumer_secret,
    'username': username,
    'password': password,
    'organization_id': organization_id
}

r = requests.post("https://login.salesforce.com/services/oauth2/token",
                  headers={"Content-Type": "application/x-www-form-urlencoded"},
                  data=payload)

print(r.content)

# Retrieve token
json_res = r.json()
access_token = json_res['access_token']
auth = {'Authorization': 'Bearer ' + access_token}

# In some cases, instance_url may be different from your base URL, so it's best to extract it from response.json()
instance_url = json_res['instance_url']

# GET requests
url = instance_url + '/services/data/v49.0/sobjects/contact/describe'
res = requests.get(url, headers=auth)
r = res.json()
print(r)
