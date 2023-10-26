import 'package:flutter/material.dart';

class Subject {
  String name;
  int duration;
  Color color;
  
  Subject({
    required this.name,
    required this.color,
    required this.duration
  });

  static List<Subject> getHours() {
    List<Subject> hours = [];
    hours.add(Subject(name: "15:15", color: Colors.white, duration: 1));
    hours.add(Subject(name: "16:15", color: Colors.white, duration: 1));
    hours.add(Subject(name: "17:30", color: Colors.white, duration: 1));
    hours.add(Subject(name: "18:30", color: Colors.white, duration: 1));
    hours.add(Subject(name: "19:45", color: Colors.white, duration: 1));
    hours.add(Subject(name: "20:40", color: Colors.white, duration: 1));
    return hours;
  }

  static List<Subject> getMondaySubjects() {
    List<Subject> mondaySubjects = [];
    mondaySubjects.add(Subject(name: "Android", color: Color.fromARGB(255, 244, 193, 54), duration: 2));
    mondaySubjects.add(Subject(name: "Flutter", color: const Color.fromARGB(255, 92, 182, 255), duration: 1));
    mondaySubjects.add(Subject(name: "Unity", color: const Color.fromARGB(255, 255, 91, 91), duration: 2));
    mondaySubjects.add(Subject(name: "", color: Colors.transparent, duration: 1));
    return mondaySubjects;
  }

  static List<Subject> getTuesdaySubjects() {
    List<Subject> tuesdaySubjects = [];
    tuesdaySubjects.add(Subject(name: "Android", color: Color.fromARGB(255, 244, 193, 54), duration: 2));
    tuesdaySubjects.add(Subject(name: "Flutter", color: const Color.fromARGB(255, 92, 182, 255), duration: 2));
    tuesdaySubjects.add(Subject(name: "Patrons de disseny", color: Color.fromARGB(255, 91, 255, 99), duration: 2));
    return tuesdaySubjects;
  }

  static List<Subject> getWednesdaySubjects() {
    List<Subject> wednesdaySubjects = [];
    wednesdaySubjects.add(Subject(name: "", color: Colors.transparent, duration: 1));
    wednesdaySubjects.add(Subject(name: "FOL", color: Color.fromARGB(255, 219, 122, 248), duration: 1));
    wednesdaySubjects.add(Subject(name: "Unity", color: const Color.fromARGB(255, 255, 91, 91), duration: 2));
    wednesdaySubjects.add(Subject(name: "Tutoria", color: const Color.fromARGB(255, 255, 91, 91), duration: 1));
    wednesdaySubjects.add(Subject(name: "", color: Colors.transparent, duration: 1));
    return wednesdaySubjects;
  }

  static List<Subject> getThursdaySubjects() {
    List<Subject> thursdaySubjects = [];
    thursdaySubjects.add(Subject(name: "Acces a Dades", color: Color.fromARGB(255, 143, 253, 70), duration: 3));
    thursdaySubjects.add(Subject(name: "Big Data", color: Color.fromARGB(255, 255, 178, 178), duration: 2));
    thursdaySubjects.add(Subject(name: "", color: Colors.transparent, duration: 1));
    return thursdaySubjects;
  }

  static List<Subject> getFridaySubjects() {
    List<Subject> fridaySubjects = [];
    fridaySubjects.add(Subject(name: "JavaFx", color: Color.fromARGB(255, 219, 122, 248), duration: 2));
    fridaySubjects.add(Subject(name: "ERP", color: const Color.fromARGB(255, 255, 91, 91), duration: 2));
    fridaySubjects.add(Subject(name: "", color: Colors.transparent, duration: 2));
    return fridaySubjects;
  }
}
