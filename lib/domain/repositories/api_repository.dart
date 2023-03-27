import 'package:my_project/domain/models/requests/breaking_new_request.dart';
import 'package:my_project/domain/models/responses/breaking_news_response.dart';
import 'package:my_project/utils/resources/data_state.dart';

abstract class ApiRepository {
  Future<DataState<BreakingNewsResponse>> getBreakingNewsArticles({
    required BreakingNewsRequest request,
  });
}
