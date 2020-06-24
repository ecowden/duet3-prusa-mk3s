# Duet 3 Configuration for Customized Prusa MK3S

## Mesh Bed Leveling

This config uses a 7x7 mesh. 

The official Prusa firmware has the option for magnet compensation,
which ignores specific points over magnets that are known to cause problems. 
That mesh looks like this, where `1` indicates a good position and `0` indicates
a position with an interfering magnet:

```
0123456

1111111  //6
1111111  //5
1110111  //4
1111011  //3
1110111  //2
1111111  //1
1111111  //0
```