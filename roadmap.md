---
layout: default
title: "Roadmap"
---

# Roadmap

We want to keep Operaton users informed and know what to expect next and
when. This also shall show where the current priorities of the contributors
lie. If you have other priorities you may share them in our forum or
contribute changes yourself (with the help of the community).

Our project is a community-driven, open-source fork of Camunda 7 OSS, built and steered by an experienced and focused core team. To ensure long-term sustainability, we follow a clear and disciplined release strategy that defines how new features are introduced, how bug fixes are delivered, and how version end-of-life (EOL) is handled.
This approach is designed to maximize impact and reliability: it enables continuous innovation while providing users with predictable stability and support — all without creating unnecessary operational overhead.

## Upcoming

<div class="bpmn">
  <div class="start">Today</div>
  <div class="arrow"></div>
  <div class="group">
    <h3>February 2026</h3>
    <div class="task">Release 1.1</div>
  </div>
  <div class="arrow"></div>
  <div class="group">
    <h3>April 2026</h3>
    <div class="task">Release 2.0</div>
  </div>
  <div class="arrow"></div>
  <div class="group">
    <h3>October 2026</h3>
    <div class="task">Release 2.1</div>
  </div>
  <div class="arrow"></div>
  <div class="end"></div>
</div>

<br>

### Planned Release Dates & Compatibility Matrix

| Version | Release Date | Support Timeline | Summary                                                   | JDK | Jakarta EE | Spring Boot | Quarkus  |
|:--------|:-------------| :--- |:----------------------------------------------------------|:----|:-----------|:------------|:---------|
| 1.0     | Nov. 2025    | until 1.1 | Feature parity & compatibility with Camunda 7.24          | 17  | 10         | 3.5.x       | 3.28.x   |
| 1.1     | Feb. 2026    | 6 month | Extended support for Spring Boot 3.5.x                    | 17  | 10         | 3.5.x       | 3.30.x   |
| 2.0     | Apr. 2026    | 6 month | New Features. Change to the half-yearly release cycle     | 17  | 11         | 4.0.x       | 3.33 LTS |
| 2.1     | Okt. 2026    | 6 month | New Features. Update Supported Environments and Databases | 17  | 11         | 4.1.x       | next LTS |

### Release Calendar

For detailed information on planned releases, please check our Release Calendar [(Google Calendar ↗)](https://calendar.google.com/calendar/u/0?cid=MjQ5MmZhNDE4Yjg4MThiY2I4MTM3Y2YzZTBlYTNkY2Y4ZTEzZmFhMDNlZjdmZWNjNWIwMzA3YjczMmRkNWVjYUBncm91cC5jYWxlbmRhci5nb29nbGUuY29t).

### Release and Support Policy

Long-time Camunda 7 users should feel right at home with Operaton. The most notable change compared to Camunda 7 is the availability of monthly patch releases for the current active major/minor version. In Summary: Predictable feature updates, keeping supported Environments and Databases up to date, accompanied by regular patch releases.

| |                                                                                           |
| :--- |:------------------------------------------------------------------------------------------|
| **Release Cadence** | Predictable, every six months (April and October) for major/minor versions.               |
| **Support Period** | 6 month until next major/minor.                                                           |
| **Feature Releases** | Included in major/minor releases (every six months).                                      |
| **Preview Releases** | Monthly milestone releases from the main branch (2.0.0-M1, 2.0.0-M2). Not for production. |
| **Patch Releases** | Monthly patch release for the current major/minor.                                        |
| **Rolling Updates** | Backwards compatibility of the database schema between consecutive minor versions.        |

### Product Roadmap - 2026 and beyond

- Major Dependency Changes for the Operaton 2.0 Release - [GitHub Issue ↗](https://github.com/operaton/operaton/issues/1672)
- Make new Web applications production ready and replace legacy ones
- Further improvements based on our users needs
- Remove deprecated code
- Job executor performance improvements
- Keep Supported Environments and Databases up to date

## Past Changes

### November 2025

#### Release 1.0

- End of life Camunda 7.24 CE
- Release 1.0 based on 7.24 CE

#### Operaton Hub launched

- New community platform for sharing Operaton solutions

### October 2025

- operaton.org website relaunch

### Mid 2025

- Publish revised documentation
- Drop dependency on legacy technology like Wildfly 26, JavaEE and Spring 5
- Release of new webpage [operaton.org](https://operaton.org)

### February

- Standalone Operaton distribution
- Docker builds
- Wildfly distribution
- Clean up 8k static code analysis findings

### 2024

#### December - Build automation

- Automated releases and nightly builds
- SonarQube for static code analysis
- Update dependencies to Java 17

#### October - Release of initial fork

- Initial fork and package renaming
- Artefacts published in Maven Central
- Community setup (Forum, Slack, website)
