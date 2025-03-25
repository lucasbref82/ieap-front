import "package:ieap_front/domain/usecases/authentication.dart";

import "../http/http.dart";

class RemoteAuthentication {

  final HttpClient httpClient;
  final String url;

  RemoteAuthentication({required this.httpClient, required this.url});

  Future<void> auth(AuthenticationParams params) async {
    final body = params.toJson();
    await httpClient.request(url: url, method: 'post', body: body);
  }

}