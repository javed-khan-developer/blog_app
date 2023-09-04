import 'login_repo.dart';
import 'tags_repo.dart';

class Repository {
  final TagsRepo tagsRepo;
  final AuthRepo authRepo;
  Repository({
    required this.tagsRepo,
    required this.authRepo,
  });
}
