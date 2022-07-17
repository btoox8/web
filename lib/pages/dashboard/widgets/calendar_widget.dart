import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:web_app/shared/app_colors.dart'; // to use dateformat

/*
  * DateTime, DateFormat & import intl
  * TableCalendar
*/

class MyCalendar extends StatefulWidget {
  // MyCalendar({Key? key}) : super(key: key);

  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                // MMM == jan,feb... , MM = 1,2,... or M
                '${DateFormat('MMM, yyyy').format(_dateTime)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  // left chevron == decrase 1 month
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month - 1);
                      });
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: AppColor.black,
                    ),
                  ),
                  // right chevron == increase 1 month
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month + 1);
                      });
                    },
                    child: Icon(
                      Icons.chevron_right,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          // add calendar tabel
          TableCalendar(
            focusedDay: _dateTime,
            firstDay: DateTime.utc(2022),
            lastDay: DateTime.utc(2050),
            headerVisible: false,
            onFormatChanged: (result) {}, // need para
            // style
            daysOfWeekStyle: DaysOfWeekStyle(
              dowTextFormatter: (date, local) =>
                  DateFormat('EEE').format(date).toLowerCase(),
              weekdayStyle: TextStyle(fontWeight: FontWeight.bold),
              weekendStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            // calendar style
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: AppColor.mainColor,
                shape: BoxShape.circle,
              ),
              markerDecoration: BoxDecoration(
                color: AppColor.mainColor,
                shape: BoxShape.circle,
              ),
            ),
            onPageChanged: (theDate) {
              _dateTime = theDate;

              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
