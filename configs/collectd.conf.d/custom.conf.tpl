LoadPlugin load
LoadPlugin memory
LoadPlugin uptime

LoadPlugin aggregation
<Plugin "aggregation">
   <Aggregation>
     Plugin "cpu"
     Type "cpu"
     GroupBy "Host"
     GroupBy "TypeInstance"
     CalculateSum true
     CalculateAverage true
     CalculateMaximum true
   </Aggregation>
 </Plugin>

LoadPlugin vmem
<Plugin "vmem">
    Verbose false
</Plugin>

LoadPlugin df
<Plugin "df">
    ValuesPercentage true
    IgnoreSelected true
    FSType "proc"
    FSType "sysfs"
    FSType "cgroup"
    FSType "debugfs"
    FSType "securityfs"
    FSType "devtmpfs"
    FSType "devpts"
    FSType "tmpfs"
    FSType "pstore"
    FSType "rpc_pipefs"
</Plugin>
