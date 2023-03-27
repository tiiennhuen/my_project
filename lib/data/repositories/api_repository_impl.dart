import 'package:my_project/data/base_api_repository.dart';
import 'package:my_project/data/datasources/remote/news_api_service.dart';
import 'package:my_project/domain/models/requests/breaking_new_request.dart';
import 'package:my_project/domain/models/responses/breaking_news_response.dart';
import 'package:my_project/domain/repositories/api_repository.dart';
import 'package:my_project/utils/resources/data_state.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final NewsApiService _newsApiService;

  ApiRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<BreakingNewsResponse>> getBreakingNewsArticles({required BreakingNewsRequest request}) {
    return getStateOf<BreakingNewsResponse>(
        request: () => _newsApiService.getBreakingNewsArticles(
              apiKey: request.apiKey,
              country: request.country,
              category: request.category,
              page: request.page,
              pageSize: request.pageSize,
            ));
  }
}
