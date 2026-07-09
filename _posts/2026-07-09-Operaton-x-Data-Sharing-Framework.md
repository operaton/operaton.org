<img width="1672" height="941" alt="DSFxOperaton-Graphics" src="https://github.com/user-attachments/assets/4949b4b1-2d3c-4edb-977c-fb670ed17a50" />

# Operaton powers the Data Sharing Framework in production

The [Data Sharing Framework (DSF) community](https://dsf.dev) has successfully completed the migration of all 38 participating German university hospitals and additional five research sites to DSF v.2.1.0 in the Medical Informatics Initiative. With Operaton powering the business process engine, this production rollout marks an important milestone for Germany’s sustainable, federated research data infrastructure.

The transition began with the [DSF 2.0 architecture roadmap](https://dsf.dev/posts/2025-10-02-operaton-DSF-2.0.html), which introduced Operaton as the process engine for the next generation of the platform. Following extensive testing and a coordinated rollout, Operaton is now running in production throughout the network.

**Enabling distributed research at national scale**

The DSF enables organizations to coordinate secure research workflows without relying on a central infrastructure. Each participating site operates its own Fast Healthcare Interoperability Ressources (FHIR) endpoint and business process engine, forming a distributed peer-to-peer network based on the BPMN 2.0 and FHIR R4 standards.

Operaton provides the BPMN execution foundation inside each site’s DSF Business Process Engine. Together with the DSF’s communication and security components, it enables local and cross-site process steps to be coordinated reliably across the network. The DSF is use-case-independent by design. A single installation can participate in multiple research networks and execute several use cases in parallel. New workflows are added through process plugins, allowing the infrastructure to evolve without requiring a separate platform for every research project.

**A controlled migration from Camunda 7**

The move from Camunda 7 to Operaton was incorporated into the DSF 2.0 development cycle at an early stage. DSF milestone releases followed Operaton’s development closely, allowing the community to identify integration issues early and validate the new engine well before the production rollout. All components and migration procedures were tested on dedicated infrastructure before deployment. This reduced operational risk and gave participating sites a controlled upgrade path.

A particularly important requirement was compatibility with existing DSF 1 process plugins. These plugins had been compiled against Camunda 7 APIs and were already deployed across the network. Requiring every plugin to be refactored and released simultaneously would have made the migration considerably more disruptive. To avoid this, DSF 2 introduced a compatibility layer that rewrites the relevant Java bytecode at runtime. At the same time, the new Process Plugin API v2 provides a clean foundation for future development based on Operaton. The approach is described in our Operaton release-party talk: [The migration path from Camunda 7 to Operaton in a real production environment](https://www.youtube.com/watch?v=sdjm1wqGMMM)

**Open source as infrastructure**

This migration demonstrates the importance of free and open-source software for sustainable, publicly funded research infrastructure. Operaton provides the DSF community with a transparent and collaboratively maintained BPMN engine, independent of proprietary licensing.

The successful nationwide rollout also shows that Operaton can support complex distributed workflows while preserving existing investments in processes and plugins. We thank both communities for making this milestone possible and look forward to continuing our collaboration.
