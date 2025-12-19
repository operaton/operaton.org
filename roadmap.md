---
layout: default
title: "Roadmap"
---

<header>
  <h1>Roadmap</h1>
  <p>
  We want to keep Operaton users informed and know what to expect next and
  when. This also shall show where the current priorities of the contributors
  lie. If you have other priorities you may share them in our forum or
  contribute changes yourself (with the help of the community).
  </p>
</header>

## Principles

The Operaton project is a community-driven, open-source fork of Camunda 7 OSS. As a relatively small core team, we need a sustainable and clear strategy for releasing new features, providing bug fixes, and defining the end-of-life (EOL) for versions. The strategy must balance innovation velocity with stability for users, without placing an unsustainable maintenance burden on the core team.

## Upcoming

<div class="bpmn">
  <div class="start">Fork</div>
  <div class="arrow"></div>
  <div class="group">
    <h3>November 2025</h3>
    <div class="task">Release 1.0</div>
    <div class="task">Website Relaunch</div>
  </div>
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

### Release and Support Policy

Long-time Camunda 7 users should feel right at home with Operaton. The most notable change compared to Camunda 7 is the availability of monthly patch releases for the current active major/minor version. 

| |                                                                                             |
| :--- |:--------------------------------------------------------------------------------------------|
| **Release Cadence** | Predictable, every six months (April and October) for major/minor versions.                 |
| **Support Period** | 6 month until next major/minor.                                                             |
| **Feature Releases** | Included in major/minor releases (every six months).                                        |
| **Preview Releases** | Monthly milestone releases from the main branch (2.0.0-M1, 2.0.0-M2). Not for production.   |
| **Patch Releases** | Monthly patch release for the current major/minor                                           |
| **Rolling Updates** | Backwards compatibility of the database schema between consecutive minor versions. |
| **Summary** | Predictability but frequent updates (every 6 month) assisted by the rolling update feature. |

### Version Roadmap & Compatibility Matrix

| Version | Release Date | Support Timeline | Comment                                 | Spring Boot | Quarkus  |
| :--- | :--- | :--- |:----------------------------------------| :--- |:---------|
| 1.0 | Nov. 2025 | until 1.1 |                                         | 3.5.x |          |
| 1.1 | Feb. 2026 | 6 month | Extended support for Spring Boot 3.5.x  | 3.5.x | 3.27 LTS | 
| 2.0 | Apr. 2026 | 6 month | Change to the half-yearly release cycle | 4.0.x | 3.33 LTS |
| 2.1 | Okt. 2026 | 6 month |                                         | 4.1.x |          |

### Product Roadmap - 2026 and beyond

- Make new Web applications production ready and replace legacy ones
- Further improvements based on our users needs
- Remove deprecated code
- Job executor performance improvements
- Keep Supported Platforms and Databases up to date

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
