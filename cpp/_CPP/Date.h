/*
 * Date.h
 *
 *  Created on: Jan 4, 2021
 *      Author: stijanic
 */

#ifndef DATE_H_
#define DATE_H_

namespace Time {

int y = 2021;
int m = 1;
int d = 1;

class Date {

private:
	const static int Y = 1972;
	const static int M = 3;
	const static int D = 20;

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

	const static int YEAR = 1970;
	const static int MONTH = 1;
	const static int DAY = 1;

	static Date epoch(); // some static function fun

	Date add(Date dateToAdd);

	void print();
};
}
#endif /* DATE_H_ */
