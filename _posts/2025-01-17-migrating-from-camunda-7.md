---
layout: post
author: The Operaton Team
---
## Making Migration Easier: From Camunda 7 CE to Operaton

Transitioning from **Camunda 7 CE** to **Operaton** is a significant step, and we understand that migrations are rarely effortless. That’s why our focus is on making the process as **straightforward as possible**, equipping you with tools, automation, and clear guidance to minimize challenges.

### Integrating Every Useful Commit

We’re committed to backporting any **quality and reliability improvements** from Camunda 7 CE.

### Here’s how we do it:
- **Semi-Automated Pull Requests**: We’ve implemented a process to create pull requests from a curated selection of commits.
- **Review Process**: Every useful commit from Camunda 7 CE (up to its EOL in the 7.24 release) is flagged for review and integrated into Operaton.
- **4-Eyes Check Principle**: Each bugfix, enhancement, or feature addition is reviewed to ensure it meets our high standards of quality and doesn’t introduce regressions.

This approach ensures that you don’t miss critical updates during the transition. **We’ve got you covered.**

### Automating Codebase Updates with OpenRewrite

To make migration even smoother, we’re developing **OpenRewrite scripts** to handle key code changes:

- **Rewriting Includes**: Automatically updates your references to point to the Operaton Project.
- **Adjusting Class Names**: Replaces renamed class names with the new ones used in Operaton.
- **Refactoring Deprecated Methods**: Handles deprecated methods and replaces them with documented alternatives to keep your code modern and clean.

These scripts are designed to save time, reduce errors, and make the migration process far more manageable.

### Why This Matters

Here’s what our migration approach offers:

- **Save Time and Effort**: Let our tools and processes do the heavy lifting for you.
- **Ensure Continuity**: Receive all updates from the Camunda 7 CE repository in our releases.
- **Adopt Confidently**: Semi-automated tools, curated backports, and high-quality checks provide a reliable path for transitioning to Operaton.

### Looking Ahead

The **Operaton Project** is more than just a BPMN engine—it’s a commitment to **reliability, innovation, and community**.

By focusing on migration, we’re ensuring that everyone can benefit from a modern, open-source alternative without compromising on quality or ease of use.

### What Do You Think?

Are you considering the move to Operaton?  Your feedback helps us improve and deliver the best possible experience.

Let’s build the future of open-source BPMN together!