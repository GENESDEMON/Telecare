class Bookings {
  String name;
  String cost;
  String role;
  String duration;
  String day;
  String time;
  String location;
  String doctorID;
  String status;

  Bookings({
    this.name,
    this.cost,
    this.role,
    this.duration,
    this.day,
    this.time,
    this.location,
    this.doctorID,
    this.status,
  });
}

List<Bookings> books = [
  Bookings(
      name: "Sasha Sloan",
      role: "Generalist",
      duration: "30 minutes",
      day: "08-09-21",
      time: "8:00 am",
      location: "Offline",
      doctorID: "Doc001",
      cost: "10000",
      status: "upcoming"),
  Bookings(
      name: "Greg Philips",
      role: "Cardiologist",
      duration: "30 minutes",
      day: "08-09-21",
      time: "8:00 am",
      location: "Offline",
      doctorID: "Doc001",
      cost: "10000",
      status: "upcoming"),
  Bookings(
      name: "Alice Dayo",
      role: "Dentist",
      duration: "30 minutes",
      day: "08-09-21",
      time: "8:00 am",
      location: "Offline",
      doctorID: "Doc001",
      cost: "10000",
      status: "past"),
  Bookings(
      name: "Claudio Chu",
      role: "Optician",
      duration: "30 minutes",
      day: "08-09-21",
      time: "8:00 am",
      location: "Offline",
      doctorID: "Doc001",
      cost: "10000",
      status: "upcoming"),
  Bookings(
      name: "Lily Fren",
      role: "Generalist",
      duration: "30 minutes",
      day: "08-09-21",
      time: "8:00 am",
      location: "Offline",
      doctorID: "Doc001",
      cost: "10000",
      status: "past"),
];
