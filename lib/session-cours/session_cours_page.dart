import 'package:flutter/material.dart';
import 'package:projet_flutter/services/session_cours_service.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class SessionCoursPage extends StatefulWidget {
  const SessionCoursPage({super.key});

  @override
  State<SessionCoursPage> createState() {
    return _SessionCoursPageState();
  }
}

class _SessionCoursPageState extends State<SessionCoursPage> {
  SessionsCoursService sessionsCoursService = SessionsCoursService();
  List<Appointment> source=[];
  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData() {
    //sessionsCoursService.getAppointments().then((data) => source=data);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
      child: SfCalendar(
        view: CalendarView.week,
        dataSource: SessionDataSource(getAppointments()),
      ),
    ));
  }
}

class SessionDataSource extends CalendarDataSource {
  SessionDataSource(List<Appointment> source) {
    appointments = source;
  }
}
