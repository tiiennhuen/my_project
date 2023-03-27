import 'package:my_project/utils/constants/nums.dart';
import 'package:my_project/utils/constants/strings.dart';

class BreakingNewsRequest {
  final String apiKey;
  final String sources;
  final String country;
  final String category;
  final int page;
  final int pageSize;

  BreakingNewsRequest({
    this.apiKey = defaultApiKey,
    this.country = 'us',
    this.sources = 'bbc-news, abc-news',
    this.category = 'general',
    this.page = 1,
    this.pageSize = defaultPageSize,
  });
}
