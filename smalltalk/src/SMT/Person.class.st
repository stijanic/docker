"
""Instance examples:""
""1.""
aPerson := Person new.
aPerson firstname: 'Srdjan' lastname: 'Tijanic'.
aPerson address: 'Safarikova 9'.
aPerson city: 'Beograd'.
aPerson phoneNumber: '+381637318850'.
Transcript show: aPerson asString; cr.

""Class examples:""
""1.""
Person initialize.
Transcript show: Person bestFirstname; cr.
""2.""
Person initializeFirstname: 'Pera' lastname: 'Peric'.
Transcript show: Person bestFirstname; cr.
""3.""
Person initialize.
Transcript show: Person bestFirstname; show: ' '; show: Person bestLastname; cr.

"
Class {
	#name : #Person,
	#superclass : #Object,
	#instVars : [
		'firstname',
		'lastname',
		'address',
		'city',
		'phoneNumber'
	],
	#classInstVars : [
		'bestFirstname',
		'bestLastname'
	],
	#category : #SMT
}

{ #category : #naming }
Person class >> bestFirstname [
	^ bestFirstname
]

{ #category : #naming }
Person class >> bestFirstname: aFirstname [
	bestFirstname :=  aFirstname.
]

{ #category : #naming }
Person class >> bestLastname [
	^ bestLastname
]

{ #category : #naming }
Person class >> bestLastname: aLastname [ 
	bestLastname := aLastname.
]

{ #category : #initialization }
Person class >> initialize [
	self initializeFirstname: 'Srdjan' lastname: 'Tijanic'.
]

{ #category : #initialization }
Person class >> initializeFirstname: aFirstname lastname: aLastname [ 
	bestFirstname := aFirstname.
	bestLastname := aLastname
]

{ #category : #accessing }
Person >> address [
	^ address
]

{ #category : #accessing }
Person >> address: anAdress [
address := anAdress
]

{ #category : #accessing }
Person >> city [
	^ city
]

{ #category : #accessing }
Person >> city: aCity [
	city := aCity
]

{ #category : #accessing }
Person >> firstname [

	^ firstname
]

{ #category : #initialization }
Person >> firstname: aFirstname [
self initialize.
firstname := aFirstname
]

{ #category : #initialization }
Person >> firstname: aFirstname lastname: aLastname [
self initialize.
firstname := aFirstname.
lastname := aLastname
]

{ #category : #accessing }
Person >> lastname [

	^ lastname
]

{ #category : #initialization }
Person >> lastname: aLastname [
self initialize.
lastname := aLastname
]

{ #category : #accessing }
Person >> phoneNumber [
	^ phoneNumber
]

{ #category : #accessing }
Person >> phoneNumber: aPhoneNumber [
	phoneNumber := aPhoneNumber
]

{ #category : #printing }
Person >> printString [
	| full |
	full := ''.
	firstname ifNotNil: [ :arg | full := firstname , ' ' ].
	lastname ifNotNil: [ :arg | full := full , lastname ].
	address
		ifNotNil: [ :arg | full := full , (String with: Character cr) , address ].
	city
		ifNotNil: [ :arg | full := full , (String with: Character cr) , city ].
	phoneNumber
		ifNotNil: [ :arg | full := full , (String with: Character cr) , phoneNumber ].
	^ full
]
