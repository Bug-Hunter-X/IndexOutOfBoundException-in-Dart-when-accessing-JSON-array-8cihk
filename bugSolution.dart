```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      // Check the list length before accessing elements
      if(data.length > 1){
        print('First element: ${data[0]}'); 
        print('Second element: ${data[1]}');
      } else {
        print("List has less than 2 elements");
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```