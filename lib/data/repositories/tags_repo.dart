import 'package:velocity_x/velocity_x.dart';

import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoints.dart';

class TagsRepo extends ApiClient {
  getAllTags() async {
    try {
      final response = await getRequest(path: ApiEndpoints.tags);
      if (response.statusCode == 200) {
        Vx.log(response.data);
      }
    } catch (e) {
      Vx.log(e);
    }
  }
}
