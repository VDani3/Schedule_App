import 'package:Horario/models/subject.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<Subject> hours = [];
  List<Subject> mondaySubjects = [];
  List<Subject> tuesdaySubjects = [];
  List<Subject> wednesdaySubjects = [];
  List<Subject> thursdaySubjects = [];
  List<Subject> fridaySubjects = [];

  void _getCategories() {
    hours = Subject.getHours();
    mondaySubjects = Subject.getMondaySubjects();
    tuesdaySubjects = Subject.getTuesdaySubjects();
    wednesdaySubjects = Subject.getWednesdaySubjects();
    thursdaySubjects = Subject.getTuesdaySubjects();
    fridaySubjects = Subject.getFridaySubjects();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      backgroundColor: Color(0xFF1D1D1D),
      body: Center(
          child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _dayColumn(hours, ''),
                      _dayColumn(mondaySubjects, 'Monday'),
                      _dayColumn(tuesdaySubjects, 'Tuesday'),
                      _dayColumn(wednesdaySubjects, 'Wednesday'),
                      _dayColumn(thursdaySubjects, 'Thusday'),
                      _dayColumn(fridaySubjects, 'Friday')
                    ]),
              ))),
    );
  }

  Container _dayColumn(List<Subject> subjects, String day) {
    return Container(
      width: 100,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 20,
              width: double.infinity,
              child: Text(
                '$day',
                style:
                    TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(2),
                      topLeft: Radius.circular(2)),
                  color: const Color.fromARGB(76, 255, 255, 255)),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: subjects.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  height: 40 * subjects[index].duration.toDouble(),
                  color: subjects[index].color,
                  child: Text(
                    subjects[index].name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              },
            )
          ]),
    );
  }
}
