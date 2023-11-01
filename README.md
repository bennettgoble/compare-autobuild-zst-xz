# Autobuild xz vs zstd

This repositories compares xz and zstd decompression of [autobuild][] packages using
a majority of ReleaseOS packages from the Second Life [viewer][].

## Results

```
./compare.sh 
Decompressing using zst

real    0m2.194s
user    0m1.984s
sys     0m0.212s
Decompressing using xz

real    0m16.667s
user    0m16.589s
sys     0m0.080s
```

[autobuild]: https://github.com/secondlife/autobuild
[viewer]: https://github.com/secondlife/viewer
