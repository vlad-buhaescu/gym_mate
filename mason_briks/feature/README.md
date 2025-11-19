# feature brick

Scaffolds a feature package that mirrors the structure of the existing `harry_potter` package:

- Flow-based navigation with `flow_builder`
- State management via `flutter_bloc`
- Dependency injection through `get_it` + `injectable`
- Localization using `i69n`
- Immutable models using `freezed`

## Variables

- `name`: package/feature name (snake case recommended, e.g., `harry_potter`)
- `entity`: singular domain entity name (e.g., `character`)
- `entityPlural`: plural form of the entity (e.g., `characters`)
- `promptText`: UI copy for the selection prompt (default: `Choose an item`)

## Usage

```bash
mason make feature \
  --name harry_potter \
  --entity character \
  --entityPlural characters \
  --promptText "Choose a character"
```

After generation, run code generation:

```bash
cd <generated_package>
dart run build_runner build --delete-conflicting-outputs
dart run i69n
```

Then add the package to `pubspec.yaml` and wire it into your app/router as needed.

