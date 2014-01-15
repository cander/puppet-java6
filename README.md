# Java 6 JDK Puppet Module for Boxen


Installs the Java Development Kit (JDK) **version 6** update 65.  If you're looking for
Java 7, see [puppet-java](https://github.com/boxen/puppet-java).

Currently, this does not install the JRE, just the JDK.  I think that means
it does not install Java browser plug-in, which is probably a good thing.


## Usage

```puppet
include java6
```

## Required Puppet Modules

* `boxen`

