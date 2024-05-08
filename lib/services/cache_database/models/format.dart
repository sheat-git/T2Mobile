enum Format {
  moodle,
  html,
  plain,
  markdown;

  static Format? fromValue(int? value) => switch (value) {
        0 => Format.moodle,
        1 => Format.html,
        2 => Format.plain,
        4 => Format.markdown,
        _ => null,
      };
}
