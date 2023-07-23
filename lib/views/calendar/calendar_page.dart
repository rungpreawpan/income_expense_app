import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:income_expense/components/text_font_style.dart';
import 'package:income_expense/constant/constant.dart';
import 'package:income_expense/views/calendar/calendar_components/calendar_detail_card.dart';
import 'package:income_expense/views/calendar/controller/calendar_controller.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key,}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final DateRangePickerController _controller = DateRangePickerController();
  final CalendarController _calendarController = Get.put(CalendarController());

  @override
  void initState() {
    super.initState();
    _calendarController.selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: marginX2,
            left: marginX2,
            right: marginX2,
          ),
          child: Column(
            children: [
              Expanded(
                child: SfDateRangePicker(
                  controller: _controller,
                  showNavigationArrow: true,
                  allowViewNavigation: false,
                  headerHeight: 50.0,
                  headerStyle: const DateRangePickerHeaderStyle(
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: fontAppBar,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  yearCellStyle: const DateRangePickerYearCellStyle(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  monthCellStyle: const DateRangePickerMonthCellStyle(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                    ),
                    todayTextStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  monthViewSettings: const DateRangePickerMonthViewSettings(
                    viewHeaderStyle: DateRangePickerViewHeaderStyle(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  selectionTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                  initialSelectedDate: _calendarController.selectedDate,
                  onSelectionChanged: (args) {
                    _calendarController.selectedDate = args.value;
                    setState(() {});
                  },
                  cellBuilder: (context, details) {
                    final bool isSelected = isSameDate(
                        details.date, _calendarController.selectedDate);
                    final bool isToday =
                    isSameDate(details.date, DateTime.now());

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Column(
                        children: [
                          Container(
                            width: 32.0,
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Colors.grey.shade400
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0),
                              border: isToday
                                  ? Border.all(color: Colors.grey)
                                  : null,
                            ),
                            child: Center(
                              child: TextFontStyle(
                                details.date.day.toString(),
                                size: fontSizeM,
                                weight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const TextFontStyle(
                            '100',
                            size: 10.0,
                            color: Colors.green,
                          ),
                          //TODO: change to auto size text
                          const TextFontStyle(
                            '20000000',
                            size: 10.0,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    );
                  },
                  todayHighlightColor: Colors.grey.shade400,
                  selectionShape: DateRangePickerSelectionShape.circle,
                  selectionColor: Colors.transparent,
                  selectionRadius: 20.0,
                ),
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.25,
                padding: const EdgeInsets.all(margin),
                margin: const EdgeInsets.only(
                  top: marginX2,
                  bottom: marginX2,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: customBoxShadow,
                ),
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const CalendarDetailCard(
                      icon: 'assets/icons/card/bread_outlined_icon.png',
                      title: 'lunch',
                      total: '10',
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isSameDate(DateTime date, DateTime dateTime) {
    if (date.year == dateTime.year &&
        date.month == dateTime.month &&
        date.day == dateTime.day) {
      return true;
    }

    return false;
  }
}
