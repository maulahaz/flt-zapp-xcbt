//===============================================
class GroceryModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  GroceryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class GroceryData {
  static List<Map<String, dynamic>> groceryItems = [
    {
      'id': '1',
      'name': 'Bananas',
      'description': 'Fresh bananas from Ecuador',
      'price': 0.49,
      'imageUrl':
          'https://source.unsplash.com/6uAssP0vuPs',
    },
    {
      'id': '2',
      'name': 'Grapes',
      'description': 'Organic, locally grown apples',
      'price': 1.99,
      'imageUrl':
          'https://source.unsplash.com/2pPw5Glro5I',
    },
    {
      'id': '3',
      'name': 'Bread',
      'description': 'Brown Bread, Tasty',
      'price': 2.49,
      'imageUrl': 'https://source.unsplash.com/gouGFACv-sk',
    },
    {
      'id': '4',
      'name': 'Brown Eggs',
      'description': 'Farm-fresh brown eggs',
      'price': 3.99,
      'imageUrl':
          'https://source.unsplash.com/byl3G0-ZwZ0',
    },
  ];
}
