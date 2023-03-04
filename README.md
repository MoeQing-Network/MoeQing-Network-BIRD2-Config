# MoeQing Network | AS200105

The bird2 config for MoeQing Network


## Internal Community:

>(200105, <999,  0)            Community for all my node
>
>(200105, <999,  1)            Community only for this node

```
(200105,   1, *)   do not send to ibgp
(200105,   2, *)   do not send to ebgp
(200105,   3, *)   do not send to kernel
(200105,   4, *)   send to kernel but mark unreachable
(200105,   5, *)   send to kernel but mark blackhole
(200105, 101, *)   allow bgp_local_perf
(200105, 201, *)   transit routes
(200105, 202, *)   ixp rs routes
(200105, 203, *)   peer routes
(200105, 204, *)   customer routes
(200105, 209, *)   ibgp routes
```

## Control Community:
```
 Actions:
  * = 0   do not announce to target
  * = 1   prepend 1 to target
  * = 2   prepend 2 to target
  * = 4   prepend 4 to target
  * = 8   prepend 8 to target
 Action target selector:
  * = Action
  (200105, 1*00, 0)            Do action to everyone
  (200105, 1*01, asn)          Don't do action to this asn
  (200105, 1*02, asn)          Do action to this asn
  (200105, 1*10, 0)            Do action to every region
  (200105, 1*11, region_code)  Don't do action to this region
  (200105, 1*12, region_code)  Do action to this region
  (200105, 1019, 0)            Disable (asn, 1010, 0),  (asn, 1011, local_region) as default value
  (200105, 1*20, 0)            Do action to every country
  (200105, 1*21, country_code) Don't do action to this country
  (200105, 1*22, country_code) Do action to this country
  (200105, 1*30, 1)            Do action to upstreams
  (200105, 1*30, 2)            Do action to ixp rs
  (200105, 1*30, 3)            Do action to peers
  (200105, 1*30, 4)            Do action to downstreams
  (200105, 1*30, 8)            Do action to route collectors
```

## Examples:
```
  prepend 11 to AS6939: 
     (200105, 1102, 6939): prepend 1 to AS6939
     (200105, 1202, 6939): prepend 2 to AS6939
     (200105, 1802, 6939): prepend 8 to AS6939
                 Total : 1+2+8 = 11
  prepend 2 to everyone but 6939:
    (200105, 1200, 0):     prepend 2 to everyone
    (200105, 1201, 6939):  don't do this action(prepend 2) to AS6939
  do not announce to anyone: 
    (200105, 1000, 0):     do not announce to everyone
  announce to all region:
    (200105, 1019, 0):     announce to all region
  announce in Asia-E only:
    (200105, 1010, 0):     do not announce to every region
    (200105, 1011, 52):    but announce to Asia-E region
```

## Informational Community
```
(200105, 10000, region_code)    Received from region
(200105, 10001, country_code)   Received from country
```

## Region code:
```
* 41: Europe
* 42: North America-East
* 43: North America-Central
* 44: North America-West
* 45: Central America
* 46: South America-Central
* 47: South America-West
* 48: Africa-N (above Sahara)
* 49: Africa-S (below Sahara)
* 50: Asia-S (IN, PK, BD)
* 51: Asia-SE (TH, SG, PH, ID, MY)
* 52: Asia-E (JP, KR, TW, HK, CN)
* 53: Pacific&Oceania (AU, NZ, FJ)
* 54: Antarctica
* 55: Asia-N (RU)
* 56: Asia-W (IR, TR, UAE)
* 57: Central Asia (AF, UZ, KZ)
```

## Country code:
ISO-3166 numeric-3 country code

## Credits

* Special thanks [KusakabeShi](https://github.com/KusakabeShi)
