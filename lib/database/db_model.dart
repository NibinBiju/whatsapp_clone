class StatusDb {
  final String name;
  final String imagepath;
  final String time;

  StatusDb({required this.name, required this.imagepath, required this.time});

  String get _name => name;
  String get _imagepath => imagepath;
  String get _time => time;
}

final List recentStatusData = [
  StatusDb(
      name: 'John',
      imagepath: 'assets/images/profile no1.jpeg',
      time: 'Today 8:43 pm'),
  StatusDb(
      name: 'Gokul',
      imagepath: 'assets/images/profile no2.jpeg',
      time: 'Today 8:43 pm'),
  StatusDb(
      name: 'Angal',
      imagepath: 'assets/images/profile no3.jpeg',
      time: 'Today 8:43 pm'),
  StatusDb(
      name: 'Greena',
      imagepath: 'assets/images/profile no4.jpeg',
      time: 'Today 8:43 pm'),
  StatusDb(
      name: 'Arun',
      imagepath: 'assets/images/profile no5.jpeg',
      time: 'Today 8:43 pm'),
];
