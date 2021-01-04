/*
 * Date.h
 *
 *  Created on: Jan 4, 2021
 *      Author: stijanic
 */

#ifndef DATE_H_
#define DATE_H_

class Date {

private:
	int year, month, day;

public:
	Date();
	Date(int year, int month, int day);
	Date(const Date &date);

	virtual ~Date();

	int getYear() const;
	void setYear(int year);

	int getDay() const;
	void setDay(int day);

	int getMonth() const;
	void setMonth(int month);

	inline void addDays(int days) { // inline by default as inside of class definition
		this->day += days;
	}

	inline void addMonths(int months) { // inline by default as inside of class definition
		this->month += months;
	}

	inline void addYears(int years) { // inline by default as inside of class definition
		this->year += years;
	}

	static Date epoch(); // some static function fun

	Date add(Date dateToAdd);

	void print();
};

#endif /* DATE_H_ */
