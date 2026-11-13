Purse only runs on the client and has zero performance impact on the server (with server authority disabled).

All performance benchmarks are measured on the client using the [Developer Console] in Roblox Studio testing.

  [Developer Console]: https://create.roblox.com/docs/en-us/studio/developer-console

!!! note

    Benchmarks may be optimistic due to the optimization level of the Luau compiler in Studio testing being lower than in live games.

## Memory

Typically around 0.10 to 0.20 MB of memory is used. Purse uses [TopbarPlus], which adds around 0.16 MB of memory on top of the typical memory consumption.

  [TopbarPlus]: https://1foreverhd.github.io/TopbarPlus/

## CPU

The [MicroProfiler] and [Script Profiler] within the [Developer Console] cannot measure any meaningful CPU impact. No per-frame calculations are made and the code is entirely event-driven.

  [MicroProfiler]: https://create.roblox.com/docs/en-us/performance-optimization/microprofiler
  [Script Profiler]: https://create.roblox.com/docs/en-us/studio/optimization/scriptprofiler
