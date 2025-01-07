class EmrListItems {
  final String image;
  final String name;

  EmrListItems({required this.name, required this.image});
}

List<EmrListItems> items = [
  EmrListItems(image: 'assets/Group 91.png', name: 'Treatment List'),
  EmrListItems(image: 'assets/Layer_2.png', name: 'Drug List'),
  EmrListItems(image: 'assets/Layer_2-2.png', name: 'Complaints'),
  EmrListItems(image: 'assets/Layer_2-3.png', name: 'Observations'),
  EmrListItems(image: 'assets/Layer_1.png', name: 'Diagnosis'),
  EmrListItems(image: 'assets/Layer_2-4.png', name: 'Investigation')
];

