# lib-dummy-atomics

This library provides dummy placecholders for gcc's [atomic builtins](https://gcc.gnu.org/onlinedocs/gcc/_005f_005fatomic-Builtins.html). This sounds quite weird but it provides a way to compile Rust code litered with atomics to a single-threaded environment, such as [Nervos CKB](https://github.com/nervosnetwork/ckb)'s current runtime without parallelism.
