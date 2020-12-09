from simple_salesforce import Salesforce, SalesforceLogin, SFType
import json

loginInfo = json.load(open('login.json'))
username = loginInfo['username']
password = loginInfo['password']
consumer_key = loginInfo['consumer_key']
consumer_secret = loginInfo['consumer_secret']
security_token = loginInfo['security_token']
organization_id = loginInfo['organization_id']

session_id, instance = SalesforceLogin(username=username, password=password,
                                       security_token=security_token, domain='login')
print(session_id, instance)

contact = SFType('Contact', session_id, instance)
contact.create({'LastName': 'Jones', 'Email': 'example@example.com'})

# use domain='login' for developer environment, use domain='test' for sandbox environment
sf = Salesforce(username=username, password=password, security_token=security_token, domain='login')
print(sf)

r = sf.search("FIND {Jones}")
contactId = r['searchRecords'][0]['Id']

# waits for user input
# input()

# deletes the contact
sf.Contact.delete(contactId)

metadata = sf.Contact.metadata()
print(metadata)

# creates a contact
r = sf.Contact.create({'LastName': 'Smith', 'Email': 'example@example.com'})
print(r)

# gets the id of created contact
contactId = r['id']
print(contactId)

# updates the contact
sf.Contact.update(contactId, {'LastName': 'Jones', 'FirstName': 'John', 'Title': 'The Very Best Guy'})

# gets the contact by id
contact = sf.Contact.get(contactId)
print(contact)

# waits for user input
# input()

# deletes the contact
sf.Contact.delete(contactId)
