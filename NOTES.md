# Architectural Notes (Bloop Assignment)

## Why AsyncNotifierProvider instead of FutureProvider?

1. **State Persistence**: `AsyncNotifier` allows for easy manual updates to the state (e.g., through a `refresh` or `addItem` method), whereas `FutureProvider` is primarily intended for one-shot data fetching that depends on external values.
2. **Logic Encapsulation**: It provides a dedicated class where side effects (like updating local cache after fetching from network) can be neatly encapsulated alongside the build logic.
3. **Complex Initialization**: It is better suited for scenarios where the initialization logic involves multiple steps, such as setting up a local database (Hive) before the initial load.

## What cache-first strategy solves from UX perspective?

1. **Near-Instant Load Time**: Users see content immediately from the local store, eliminating the "blank screen" or spinner that usually accompanies network requests.
2. **Offline Resilience**: The app remains functional even in poor network conditions, as it can fall back to the most recent cached data.
3. **Smooth Background Updates**: By fetching fresh data in the background and updating the UI only when it arrives, we avoid jarring state transitions and the "loading flicker" effect.

## Fixes Summary (Part 2)

- **BUG 1**: Fixed by using `getApplicationSupportDirectory()`, ensuring internal cache data doesn't clutter user-visible folders.
- **BUG 2**: Fixed by implementing a manual `fromJson` with `??` operators and type checks to prevent runtime crashes from null/missing fields.
- **BUG 3**: Fixed by removing `FutureBuilder` from the list items and using Riverpod's `AsyncValue` to handle data loading at the screen level.
- **BUG 4**: Fixed by ensuring Firestore maps are read-only and mapped directly to immutable models, preventing accidental side effects from mutation.
