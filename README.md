# Bloop Flutter Assignment

A production-quality Flutter application focused on Clean Architecture, State Management, and Caching.

## Requirements

- **Flutter version**: `^3.9.0`
- **Architecture**: Clean Architecture (Domain, Data, Presentation)
- **State Management**: Riverpod (`AsyncNotifierProvider`)
- **Persistence**: Hive (Local Caching)
- **Modeling**: Freezed with JSON serialization

## How to Run

1.  **Clone the repository**:
    ```bash
    git clone [your_repo_url]
    cd bloop_flutter_assignment
    ```

2.  **Install dependencies**:
    ```bash
    flutter pub get
    ```

3.  **Generate code**:
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

4.  **Run the app**:
    ```bash
    flutter run
    ```

## Mocked Data

The repository uses a mock remote data source (`CollectionRemoteDataSource`) that simulates a network request with a 1-second delay and returns a predefined list of collections. This simulates a real-world Firestore response.

## Fixed Bugs (Part 2)

I have identified and fixed the following 4 bugs as requested:

1.  **BUG 1**: Replaced `getApplicationDocumentsDirectory()` with `getApplicationSupportDirectory()` for Hive.
2.  **BUG 2**: Added manual null safety checks to `fromJson` in the `Collection` model.
3.  **BUG 3**: Removed `FutureBuilder` from `ListView` items and used Riverpod's `AsyncValue` at the screen level.
4.  **BUG 5**: Ensured Firestore maps are not mutated directly during model mapping.

Details for each fix can be found in the comments within the code and in [NOTES.md](file:///c:/Users/pc/StudioProjects/bloop_flutter_assignment/NOTES.md).
