---
layout: default
title: "FAQ"
---

# FAQ


## General

### What is Operaton?
Operaton is a community-driven, free, and open-source BPMN engine.

### What is BPMN?
BPMN stands for [Business Process Model and Notation](https://en.wikipedia.org/wiki/Business_Process_Model_and_Notation). It is a graphical representation for specifying business processes in a business process model.

### What is the license of Operaton?
Operaton is licensed under the [Apache 2.0 license](https://raw.githubusercontent.com/operaton/operaton/refs/heads/main/LICENSE).

### Why was Operaton created?
Operaton was created as a fork of [Camunda 7 CE](https://github.com/camunda/camunda-bpm-platform) to provide an open, community-driven alternative after the end of life of Camunda 7 CE in October 2025.

### Who maintains Operaton?
Operaton is maintained by an open-source community. Unlike proprietary BPMN solutions, no single company controls its direction.

### How is Operaton different from Camunda 7?
Operaton started as a fork of Camunda 7, but it is evolving as an independent project. Initially, the focus is on providing a seamless transition for Camunda 7 users, ensuring full REST API compatibility while modernizing certain aspects of the codebase.
Internally, the package namespace changed from `org.camunda` to `org.operaton`. All public classes and interfaces have been renamed accordingly and stay as close to the original as possible.

### How is Operaton different from other Camunda 7 Forks?
Operaton is not the only fork of Camunda 7. However, it is unique in its commitment to *community ownership* and *modernization of the code base*. While Operaton is a Free Open Source Software (FOSS) project, other forks may primarily be driven by commercial interests. While they might also have their code available under an open-source license, they follow an Open Core model. There is no guarantee that the community can influence the direction of these projects.

## Technical Approach

### What is the long-term technical strategy for Operaton?
The primary goal for now is a *seamless transition from Camunda 7 to Operaton*. This means that *version 1.x* will prioritize stability and compatible REST API. 
The necessary package renaming is a breaking change, but Operaton will offer migration guides and tools to help users make the switch.

Further breaking changes, if necessary, will only come in *version 2.x or later*. This includes also removal of deprecated API.

### Will there be major architectural changes?
No. Major rewrites or architectural overhauls are *not planned for the 1.x versions*. However, basic web applications will be rewritten, legacy containers will be dropped, and the codebase will be modernized—without breaking compatibility.

### When will Operaton introduce new features?
Once a *stable and reliable foundation is established*, the community will collaboratively plan future features and enhancements for later versions.

### Which Java version is required?
Operaton requires a JVM >= 17 for execution.

## Governance & Community

### How is the Operaton project governed?
Operaton is a *true community-driven* initiative, meaning that *active contributors shape the direction* of the project. Governance is still forming, and contributors have the opportunity to define its structure.

### Will a formal organization govern Operaton?
There are plans to establish a *non-profit organization* to manage key decisions. However, governance will remain open—no single company will be able to dictate the project’s direction against the interests of the community.

### How can my company influence the project?
By actively contributing! The more you and your team engage with the project—through code contributions, governance discussions, or infrastructure support—the more you help shape its future.

### How does one become a committer?
Gaining committer status requires *meaningful contributions over time*. Once a contributor has earned the trust of the community, they can be promoted to a committer. At the moment, the process is quite open — *just start contributing!*

### Is Operaton truly open?
Yes! All discussions and decisions are public. If you have questions, we encourage you to ask them in the [Forum](https://forum.operaton.org/) rather than in private.

## Release Planning

### Why is Operaton still beta?
Operaton is in beta because it is still *undergoing stabilization* and *compatibility testing*. The project team is working hard to ensure that the transition from Camunda 7 is as smooth as possible. At the same time, the project is *modernizing the codebase* to ensure long-term sustainability. Until these goals are met, the project will remain in beta.

### What is the release cycle for Operaton?
While nothing is finalized yet, there is a high likelihood that releases will follow a fixed cadence, possibly half-yearly or quarterly, depending on community needs and available resources. The project team will provide more details as the project matures.

### Will there be an LTS (Long-Term Support) version?
As an open-source project, Operaton itself does not provide LTS in the traditional sense. 
However, the *1.x version is planned to be maintained for a long time*, ensuring stability and reliability for users.
Additionally, some companies associated with the project committers offer services, including extended maintenance and the possibility of Service Level Agreements (SLAs) for enterprises that require long-term stability.

### What happens after version 1.x?
After establishing a stable 1.x version, the project will *gradually modernize and evolve*. The goal is to *stay relevant for the next decade* while maintaining backward compatibility.

## Security

### How secure is Operaton?
Operaton follows security best practices, including authentication, authorization, and encrypted database connections.

### Can I use Operaton with Single Sign-On (SSO)?
Yes, Operaton supports authentication via OAuth2, OpenID Connect, and LDAP by engine plugins.

### What security policies are in place for Operaton?
Operaton follows a security policy that includes vulnerability management, responsible disclosure, and best practices for open-source security.

### Does Operaton provide SBOMs?
Yes, Operaton provides *[Software Bill of Materials (SBOMs)](https://en.wikipedia.org/wiki/Software_supply_chain)* to help users understand the dependencies and security of the software they are using.

## Migration from Camunda 7 CE

### Can I migrate from Camunda 7 Community Edition (CE) to Operaton?
Yes! Operaton is designed to provide *smooth transition* for Camunda 7 CE. For the case that minor adjustments are required they will be documented extensively in our migration guide.

### Will my existing BPMN processes work in Operaton?
Yes. The 1.x versions of Operaton prioritize *full compatibility with Camunda 7*. Your BPMN models, process definitions, and execution logic will continue to work without changes.

### How do I migrate from Camunda 7 to Operaton?
The migration process is straightforward:
1. Upgrade to Camunda 7 CE *version 7.24*, which is the latest release before its end of life.
2. Update your application dependencies to use Operaton instead of Camunda 7 CE.
3. Replace the Camunda 7 CE libraries with Operaton equivalents in your build system (Maven, Gradle, etc.).
4. Verify compatibility with your existing database schema.
5. Run tests to ensure process execution behaves as expected.

A detailed *migration guide* will be available soon.

### What about database compatibility?
Operaton *keeps the same database schema as Camunda 7 CE*, so no database migration is required when switching.

### Are there tools to assist with migration?
Yes, the community is working on migration tooling to automate dependency updates and compatibility checks.

### Will Camunda Modeler still work with Operaton?
Yes, you can continue using Camunda Modeler to design BPMN diagrams and deploy them to Operaton.

### Does Operaton support Camunda 7 CE plugins?
Operaton does support the same plugin mechanism as Camunda 7 CE. However, since namespaces have changed, the plugins will require small rewrites to use the Operaton API.

### Is there commercial support available for migration?
Since Operaton is a free and open-source project, commercial support is provided by third-party companies offering consulting and migration services.

## Participating

### How can I join the Operaton community?
You can join the Operaton community by participating in the [Forum](https://forum.operaton.org/) or the [Chat (Slack)](https://join.slack.com/t/operaton/shared_invite/zt-3b5h8r9g4-BMvgBIue9rieW4TY~tdT8A).

### How can I report a bug?
You can report a bug by creating an issue on our [GitHub repository](https://github.com/operaton/operaton/issues).

### How can I contribute to Operaton?
There are many ways to contribute to Operaton. You can contribute code, report bugs, write documentation, help others in the community, or spread the word. For more information, see our [Contribution Guidelines](https://github.com/operaton/operaton/blob/main/CONTRIBUTING.md).

## Quality Assurance

### How is Operaton tested?

Operaton is tested using a combination of unit tests, integration tests, and end-to-end tests. 
The project follows a test-driven development (TDD) approach to ensure high code quality.

There are currently *over 25.000* automated tests in place, covering a wide range of scenarios.

### How does Operaton ensure code quality?

Operaton follows a strict code review process to ensure that all code changes are reviewed by at least one other developer.

The project also uses [SonarCloud](https://sonarcloud.io/project/overview?id=operaton_operaton) for static code analysis to identify potential issues early in the development process.


## Long-Term Vision

### Will Operaton remain a Camunda 7 CE clone?
No! While version 1.x ensures compatibility, Operaton will *evolve* over time to introduce modern features. The goal is not just to replicate Camunda 7 CE, but to **build a long-lasting open-source BPMN engine**.

### How can I help shape the future of Operaton?
By contributing! If you join and participate, you help decide the project’s direction.