enum TodoAppAnimations { splash }

extension TodoAppAnimationExtension on TodoAppAnimations {
  String get json => "animations/$name.json";

  String get package => "module_assets";
}
