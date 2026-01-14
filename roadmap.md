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
  <div class="group">
    <h3>April 2027</h3>
    <div class="task">Release 2.2 or 3.0 (TBA)</div>
  </div>
  <div class="arrow"></div>
  <div class="end"></div>
</div>

<br>

### Release Cadence

We plan to have two main releases per year, one in **April** and one in **October**.

#### Major and Minor Releases

A **major** version upgrade is done when there are breaking changes, e.g., like the drop of Spring Boot 3 support in favor of Spring Boot 4
with Operation 2.0.

Major version upgrades will happen at most once a year, i.e. after one major upgrade at most one minor upgrade will follow.

Minor releases will contain new features and bug fixes, but no breaking changes.

#### Patch Releases

Patch releases (e.g., 1.0.1, 1.0.2, etc.) will be done on each second-but-last Friday of a month. 
If there are critical bugs or security updates, additional patch releases are performed as needed.

### 2026 and beyond

- Make new Web applications production ready and replace legacy ones
- Further improvements based on our users needs
- Remove deprecated code
- Establish feature releases with plannable release cadence
- Replacement of legacy web applications (Tasklist, Cockpit, Admin) with new Operaton web applications

### April 2026

#### Release 2.0

- SpringBoot 4/Spring 7 support
- Jakarta EE 11 support

### February 2026

#### Release 1.1

- Update all dependencies to latest versions
- Fixes for low prio issues reported by the community
- Wildfly 38+ support
- JUnit 6 support
- Job executor performance improvements

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
