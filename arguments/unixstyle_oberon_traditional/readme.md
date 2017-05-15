
example shows how to implement unix style arguments parsing by using traditional oberon functions from modules Texts and Oberon.

compile
=======

```
make
```

run
===

```
make test
```

or type

```
./partest -str aaa -int 111
```

that should produce the following output

```
hello, world, let's see which arguments do we get
key: str
value: aaa
key: int
value: 111
```

```
./partest -str 000 -int 111
```

the output will be

```
hello, world, let's see which arguments do we get
key: str
string expected
Terminated by Halt(1).
```

