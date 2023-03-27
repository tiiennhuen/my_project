import 'package:equatable/equatable.dart';
import 'package:my_project/domain/models/article.dart';

class BreakingNewsResponse extends Equatable {
  final String status;
  final int totalResults;
  final List<Article> articles;

  const BreakingNewsResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BreakingNewsResponse &&
          runtimeType == other.runtimeType &&
          status == other.status &&
          totalResults == other.totalResults &&
          articles == other.articles);

  @override
  int get hashCode => status.hashCode ^ totalResults.hashCode ^ articles.hashCode;

  factory BreakingNewsResponse.fromMap(Map<String, dynamic> map) {
    return BreakingNewsResponse(
      status: (map['status'] ?? '') as String,
      totalResults: (map['totalResults'] ?? 0) as int,
      articles: List<Article>.from(
        map['articles'].map<Article>(
          (x) => Article.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        status,
        totalResults,
        articles,
      ];
}
