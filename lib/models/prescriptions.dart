class Prescriptions {
  String name;
  String cost;
  String role;
  String usage;
  String day;
  String time;
  String location;
  String doctor;
  String status;

  Prescriptions({
    this.name,
    this.cost,
    this.role,
    this.usage,
    this.day,
    this.time,
    this.location,
    this.doctor,
    this.status,
  });
}

List<Prescriptions> drugs = [
  Prescriptions(
      name: "Paracetamol",
      usage: "every 3 hours",
      day: "4 days",
      doctor: "Lily Chen",
      status: "ongoing",
      time: "09-09-21"),
  Prescriptions(
      name: "Loxagyl",
      usage: "Once daily",
      day: "4 days",
      doctor: "Lily Chen",
      status: "ongoing",
      time: "09-09-21"),
  Prescriptions(
      name: "Panadol",
      usage: "every 10 hours",
      day: "4 days",
      doctor: "Lily Chen",
      status: "past",
      time: "09-09-21"),
  Prescriptions(
      name: "Diclofenac",
      usage: "every 3 hours",
      day: "4 days",
      doctor: "Lily Chen",
      status: "ongoing",
      time: "09-09-21"),
  Prescriptions(
      name: "Ibuprofen",
      usage: "every 3 hours",
      day: "45 days",
      doctor: "Lily Chen",
      status: "past",
      time: "09-09-21"),
];
