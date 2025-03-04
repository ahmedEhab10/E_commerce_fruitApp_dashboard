import 'dart:io';

abstract class StorgeService {
  Future<String> uploadImage({required File file});
}
