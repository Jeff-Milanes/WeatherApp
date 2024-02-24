import 'package:open_meteo_api/open_meteo_api.dart';
import 'package:test/test.dart';

void main() {
  group('Location', () {
    group('fromJson', () {
      test('returns correct Location object', () {
        expect(
          Location.fromJson(
            <String, dynamic>{
              'id': 4887398,
              'name': 'Manila',
              'latitude': 14.5995,
              'longitude': 120.9842,
            },
          ),
          isA<Location>()
              .having((w) => w.id, 'id', 4887398)
              .having((w) => w.name, 'name', 'Manila')
              .having((w) => w.latitude, 'latitude', 14.5995)
              .having((w) => w.longitude, 'longitude', 120.9842),
        );
      });
    });
  });
}
