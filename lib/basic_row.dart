import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarRowBasic extends StatelessWidget {
  CalendarRowBasic({
    Key? key,
  }) : super(key: key);

  final List<Color> _rowColor = <Color>[
    Colors.green,
    Colors.red,
    Colors.black,
    Colors.yellow,
    Colors.blue,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      rowDecoration: List.generate(
        6,
        (index) => BoxDecoration(
          border: const Border(
            top: BorderSide(color: Colors.white, width: 5),
            bottom: BorderSide(color: Colors.white, width: 5),
            left: BorderSide(color: Colors.white, width: 5),
            right: BorderSide(color: Colors.white, width: 5),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          color: _rowColor[index].withOpacity(0.2),
        ),
      ),
      // [

      //   BoxDecoration(
      //     border: const Border(
      //       top: BorderSide(color: Colors.white, width: 5),
      //       bottom: BorderSide(color: Colors.white, width: 5),
      //       left: BorderSide(color: Colors.white, width: 5),
      //       right: BorderSide(color: Colors.white, width: 5),
      //     ),
      //     borderRadius: const BorderRadius.all(Radius.circular(32)),
      //     color: Colors.green.withOpacity(0.2),
      //   ),
      // ],
      // rowHeight: 32,
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
    );
  }
}
