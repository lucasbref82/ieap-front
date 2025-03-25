import 'package:ieap_front/data/http/http.dart';
import 'package:ieap_front/data/usecases/remote_authentication.dart';
import 'package:ieap_front/domain/usecases/export.dart';

import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:faker/faker.dart';


class HttpClientSpy extends Mock implements HttpClient {

}

void main() {
  test('Garante que o HttpClient rode com os valor corretos.', () async {

    final httpClient = HttpClientSpy();

    final url = faker.internet.httpUrl();

    final sut = RemoteAuthentication(httpClient: httpClient, url: url);

    final params = AuthenticationParams(email: faker.internet.email(), secret: faker.internet.password());
    
    await sut.auth(params);

    verify(httpClient
    .request(
      url: url, 
      method: 'post',
      body: {'email': params.email, 'secret': params.secret}
      ));
  });
}