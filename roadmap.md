---
layout: default
title: "Operaton Roadmap"
---

# Planned
## Release 1.0

- Ensure stability and security
- Drop-in replacement for existing web apps
- Improve tests
- Update dependencies


# Releases
##  v1.0.0-beta-2 (current release)
See the release on GitHub [v1.0.0-beta-2](https://github.com/operaton/operaton/releases/tag/v1.0.0-beta-2)

**Breaking Changes**

- Operaton removed the compatibility layer for Activiti. If you need to use Activiti models you will
  have to convert them (see the following blog post for details).
- The support for the javax.el expression language has been removed. Application servers that ship
  this library are incompatible with Operaton. If you are running Operaton on an application server,
  make sure that it supports jakarta-el in version 4.0.0 or newer (e.g. Wildfly 21 or newer).


## Initial Release 1.0.0-beta-1
See the release on GitHub [1.0.0-beta-1](https://github.com/operaton/operaton/releases/tag/1.0.0-beta-1)

Initial fork and renaming. Artefacts published in Central Maven repository:
https://central.sonatype.com/namespace/org.operaton.bpm
