/*
 * Date.cc
 *
 *  Created on: Jan 4, 2021
 *      Author: stijanic
 */

#include "std_lib_facilities.h"
#include "Date.h"

using Time::Date;
using Time::y;
using Time::m;
using Time::d;

Date::Date(void) {
	this->year = 0;
	this->month = 0;
	this->day = 0;

	cout << "Constructing..." << endl;
}

Date::Date(int year, int month, int day) {
	this->year = year;
	this->month = month;
	this->day = day;

	cout << "Constructing..." << endl;
}

Date::Date(const Date &date) { // copy constructor
	this->day = date.getDay() + 1; // we can't go back in time so we move on
	this->month = date.getMonth();
	this->year = date.getYear();

	cout << "Copy constructing... with 1 bonus day!" << endl;
};

Date::~Date() {
	year = 0;
	month = 0;
	day = 0;

	cout << "Destructing..." << endl;
}

int Date::getDay() const {
	return day;
}

void Date::setDay(int day) {
	this->day = day;
}

int Date::getMonth() const {
	return month;
}

void Date::setMonth(int month) {
	this->month = month;
}

int Date::getYear() const {
	return year;
}

void Date::setYear(int year) {
	this->year = year;
}

Date Date::epoch() {
	return Date{Y, M, D};
}

Date Date::add(Date dateToAdd){
	Date date;
	date.setDay(getDay() + dateToAdd.getDay());
	date.setMonth(getMonth() + dateToAdd.getMonth());
	date.setYear(getYear() + dateToAdd.getYear());

	return date;
}

void Date::print() {
	cout << "Year: " << getYear()
		 << " Month: " << getMonth()
		 << " Day: " << getDay()
		 << "." << endl;
}

int main(void){
	Date date{2021, 01, 01};
	date.print();

	date.addDays(5);
	date.print();

	Date::epoch().print();

	date = date.add(date);
	date.print();

	cout << y << ' ' << m << ' ' << d << endl;

	cout << Date::YEAR << ' ' << Date::MONTH << ' ' << Date::DAY << endl;

	return (0);
}
