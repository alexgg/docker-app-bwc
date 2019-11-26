Bandwidth consumption measuring application
===========================================

Alpine based container application that launches the [bmon](https://github.com/tgraf/bmon) application
on all eth\* and wlan\* interfaces by default.

It also contains the following useful tools:

* [iftop](http://www.ex-parrot.com/pdw/iftop/)
* [vnstat](https://humdi.net/vnstat/)
* net-tools
* [bmon](https://github.com/tgraf/bmon)
* [tcpdump](https://www.tcpdump.org/)

Usage
=====

The application needs to run as a privileged container on the host's network,
which is the default for single Balena applications.

By default the application will run bmon on all eth\* and wlan\* interfaces
for 10 minutes and print formatted output to /data/bmon.out.

See the dockerfile for service configuration variables.

On the shell you also have access to the rest of the tools.

Some examples:

To watch traffic statistics:

```
bmon -p eth*,wlan*
```

To capture traffic from a given interface (f.e eth0) to a given file:

```
tcmpdump -i eth0 -w /data/eth0.pcap
```
