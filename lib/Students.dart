/*
* Taylor Ramirez-Rodriguez
* Hybrid App 3
* 2023-October-12
*
*/

class Students {
  List<Map<String, String>> people;

  Students(this.people);

  void sort(String field) {
    people.sort((a, b) {
      var aValue = a[field] ?? '';
      var bValue = b[field] ?? '';
      return aValue.compareTo(bValue);
    });
  }

  void output() {
    for (var person in people) {
      print(person);
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field) {
    people.removeWhere((item) => item[field] != null);
  }
}
