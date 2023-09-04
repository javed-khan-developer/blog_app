import 'package:velocity_x/velocity_x.dart';
import '../../presentation/screens/general/tags/tags_model.dart';
import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoints.dart';

class TagsRepo extends ApiClient {
  Future<TagsModel> getAllTags() async {
    try {
      final response = await getRequest(path: ApiEndpoints.tags);
      if (response.statusCode == 200) {
        //* first solution
        // final responseData = tagsModelFromJson(jsonEncode(response.data));
        // Vx.log(responseData);
        //* second solution
        final responsData = TagsModel.fromJson(response.data);
        Vx.log(responsData);
        return responsData;
      } else {
        TagsModel();
      }
    } catch (e) {
      Vx.log(e);
      TagsModel();
    }
    return TagsModel();
  }
}
