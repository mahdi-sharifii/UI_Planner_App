class Progress {
  Progress({
    required this.id,
    required this.title,
    required this.description,
    required this.progressIndicator,
    required this.circularProgressIndicator,
  });
  final int id;
  final String progressIndicator;
  final int circularProgressIndicator;
  final String title;
  final String description;
}

class MyProgress {
  static final Set<Progress> listProgress = <Progress>{
    Progress(
      id: 0,
      title: "Working Hours",
      circularProgressIndicator: 45,
      description: 'Hours exceeded by 3 hours',
      progressIndicator: '19/40',
    ),
    Progress(
      id: 1,
      title: "Your Efficiency",
      circularProgressIndicator: 82,
      description: 'Excellent result',
      progressIndicator: '82%',
    ),
    Progress(
      id: 2,
      title: "Training hours",
      circularProgressIndicator: 75,
      description: 'Training Hours at least 2 hours',
      progressIndicator: '13/17',
    ),
    Progress(
      id: 3,
      title: "Study Hours",
      circularProgressIndicator: 60,
      description: 'Study Hours reduced by 1 hours',
      progressIndicator: '60%',
    ),
    Progress(
      id: 4,
      title: "Sleeping Hours",
      circularProgressIndicator: 15,
      description: 'Sleeping Hours exceeded by 2 hours',
      progressIndicator: '15%',
    ),
  };
}
