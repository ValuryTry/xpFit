import 'dart:convert';
import 'package:http/http.dart' as http;

class NutritionAPI {
  static const String _baseUrl = 'https://api.spoonacular.com';
  static const String _apiKey = 'fe09bfe53b5b428ea00e0a87bd3b8207';

  static Future<Map<String, dynamic>> getWeeklyMealPlan() async {
    try {
      final response = await http.get(
        Uri.parse(
          '${_baseUrl}/mealplanner/generate?timeFrame=week'
          '&apiKey=${_apiKey}',
        ),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['week'];
      } else {
        throw Exception('Failed to load meal plan: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  static String getNutritionLabelUrl(int recipeId) {
    return 'https://api.spoonacular.com/recipes/$recipeId/nutritionLabel.png?apiKey=$_apiKey';
  }
}
