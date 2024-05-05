abstract class UseCase<CharacterEntity, Params> {
  Future<CharacterEntity> call(
    String? name,
    String? status,
    String? gender,
    int? page,
  );
}
