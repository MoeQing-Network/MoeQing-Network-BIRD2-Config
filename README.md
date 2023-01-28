# MoeQing Network | AS138211

The bird2 config for my network

```
# Internal Community:
#  (138211, <999,  0)  Community for all my node
#  (138211, <999,  1)  Community only for this node
#  (138211,    1, *)   do not send to ibgp
#  (138211,    2, *)   do not send to ebgp
#  (138211,    3, *)   do not send to kernel
#  (138211,  101, *)   allow bgp_local_perf
#  (138211,  201, *)   transit routes
#  (138211,  202, *)   peer routes
#  (138211,  203, *)   customer routes
#  (138211,  204, *)   ibgp routes
#
# Control Community:
#   Actions:
#    * = 0   do not announce to target
#    * = 1   prepend 1 to target
#    * = 2   prepend 2 to target
#    * = 4   prepend 4 to target
#    * = 8   prepend 8 to target
#   Action target selector:
#    * = Action
#    (138211, 1*00, 0)            Do action to everyone
#    (138211, 1*01, asn)          Don't do action to this asn
#    (138211, 1*02, asn)          Do action to this asn
#    (138211, 1*10, 0)            Do action to every region
#    (138211, 1*11, region_code)  Don't do action to this region
#    (138211, 1*12, region_code)  Do action to this region
#    (138211, 1019, 0)            Disable (asn, 1010, 0),  (asn, 1011, local_region) as default value
#    (138211, 1*20, 0)            Do action to every country
#    (138211, 1*21, country_code) Don't do action to this country
#    (138211, 1*22, country_code) Do action to this country
#    (138211, 1*30, 1)            Do action to upstreams
#    (138211, 1*30, 2)            Do action to peers
#    (138211, 1*30, 3)            Do action to downstreams
#   Examples:
#     prepend 11 to AS6939: 
#       (138211, 1102, 6939): prepend 1 to AS6939
#       (138211, 1202, 6939): prepend 2 to AS6939
#       (138211, 1802, 6939): prepend 8 to AS6939
#                   Total : 1+2+8 = 11
#    prepend 2 to everyone but 6939:
#      (138211, 1200, 0):     prepend 2 to everyone
#      (138211, 1201, 6939):  don't do this action(prepend 2) to AS6939
#    do not announce to anyone: 
#      (138211, 1000, 0):     do not announce to everyone
#
# Informational Community
#  (138211, 10000, region_code)    Received from region
#  (138211, 10001, country_code)   Received from country
# 
# Region code:
#  * 41: Europe
#  * 42: North America-E
#  * 43: North America-C
#  * 44: North America-W
#  * 45: Central America
#  * 46: South America-E
#  * 47: South America-W
#  * 48: Africa-N (above Sahara)
#  * 49: Africa-S (below Sahara)
#  * 50: Asia-S (IN, PK, BD)
#  * 51: Asia-SE (TH, SG, PH, ID, MY)
#  * 52: Asia-E (JP, KR, TW, HK, CN)
#  * 53: Pacific&Oceania (AU, NZ, FJ)
#  * 54: Antarctica
#  * 55: Asia-N (RU)
#  * 56: Asia-W (IR, TR, UAE)
#  * 57: Central Asia (AF, UZ, KZ)
#
# Country code:
#  ISO-3166 numeric-3 country code
```

### Credits

* Special thanks KSKB
