class Reminders {
  Reminders({
    required this.id,
    required this.title,
    required this.description,
    required this.written,
    required this.period,
    required this.profilePeople,
  });
  final int id;
  final String written;
  final String period;
  final String title;
  final String description;
  final List<String> profilePeople;
}

class MyReminders {
  static final Set<Reminders> listReminders = <Reminders>{
    Reminders(
      id: 0,
      title: "Meeting with front-end developers ",
      description: 'Advertising Project',
      period: "9:50 AM - 10:50 AM",
      written: '10:00 AM',
      profilePeople: [
        "profile0.jpg",
        "profile1.png",
        "profile2.png",
        "profile3.png"
      ],
    ),
    Reminders(
      id: 1,
      title: "Internal marketing session",
      description: 'Marketing Department',
      period: "11:00 AM - 12:00 AM",
      written: '11:00 AM',
      profilePeople: [
        "profile0.jpg",
        "profile4.jpg",
        "profile3.png",
        "profile2.png",
        "profile1.png",
      ],
    ),
    Reminders(
      id: 2,
      title: "ُSoccer match",
      description: 'Manchester City vs Liverpool',
      period: "8:00 PM - 11:00 PM",
      written: '2:00 AM',
      profilePeople: [
        "profile0.jpg",
        "profile1.png",
        "profile2.png",
        "profile3.png"
      ],
    ),
    Reminders(
      id: 3,
      title: "Airport",
      description: 'Flight to New York',
      period: "3:00 AM - 9:00 AM",
      written: '5:30 AM ',
      profilePeople: [
        "profile0.jpg",
        "profile1.png",
        "profile2.png",
        "profile3.png"
      ],
    ),
  };
}
