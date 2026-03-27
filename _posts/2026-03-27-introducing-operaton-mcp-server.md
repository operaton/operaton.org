---
layout: post
author: The Operaton Team
---

## Bridging the Gap: Introducing the Operaton MCP Server

We are excited to share a new milestone in our journey toward a more accessible and modern BPMN ecosystem: the **Operaton MCP Server**. This project represents a significant step forward in how developers and business users interact with process engines, leveraging the power of Large Language Models (LLMs) and the **Model Context Protocol (MCP)**.

### What is the Operaton MCP Server?

The Operaton MCP server is a tool that allows AI agents—like Claude, ChatGPT, and other MCP-compatible clients—to interact directly with an **Operaton** instance. By bridging the gap between natural language and the Operaton REST API, it enables you to manage business processes, tasks, and deployments through simple conversation.

Currently in its early development phase, the server is available as an npm package: [`operaton-mcp`](https://www.npmjs.com/package/operaton-mcp).

### Key Features and Capabilities

The Operaton MCP server covers a large portion of the Operaton REST API, providing AI agents with the "tools" they need to perform complex operations:

- **Process & Task Management:** Inspect process definitions, claim tasks, edit variables, and complete work—all via natural language.
- **Natural Language BPMN Deployment:** You can ask the AI to "Create and deploy a BPMN 2.0 model for a simple invoice approval process," and the MCP server will handle the generation and deployment of a valid model.
- **Process Migration:** Identify migratable instances and execute migration plans with ease.
- **Incidents & Administration:** Manage user accounts, monitor incidents, and handle background jobs without manually navigating a dashboard.
- **Technical Transparency:** In line with our commitment to openness, the MCP server provides full visibility into the operations it performs.

### Why This Matters

At Operaton, we believe process automation should be accessible and community-driven. By supporting MCP, we are:

1. **Reducing Friction:** Developers can interact with the engine directly from their IDEs or AI assistants.
2. **Empowering Business Users:** Complex BPMN operations can be described in plain English, making it easier for non-technical stakeholders to understand and influence workflows.
3. **Future-Proofing:** As AI-driven development becomes the norm, Operaton is ready to be a first-class citizen in the AI toolchain.

### How to Get Started

You can integrate the Operaton MCP server into your environment (such as Claude Desktop) by adding it to your configuration file:

```json
{
  "mcpServers": {
    "operaton": {
      "command": "npx",
      "args": ["-y", "operaton-mcp"],
      "env": {
        "OPERATON_BASE_URL": "http://your-operaton-instance:8080/engine-rest",
        "OPERATON_USERNAME": "your-username",
        "OPERATON_PASSWORD": "your-password"
      }
    }
  }
}
```

Once configured, you can start asking questions like:
- *"Show me all tasks assigned to me."*
- *"Are there any active incidents in the 'OrderProcess'?"*
- *"Identify all process instances of 'InvoiceProcess' version 1 that can be migrated to version 2, and then execute the migration."*
- *"Generate and deploy a BPMN model for a travel expense reimbursement."*

### The Operaton MCP Server in Action

To give you a better idea of how this looks in practice, here are a few examples of real interactions between a user and an AI agent equipped with the Operaton MCP server.

#### 1. Process Instance Migration
In this example, the AI identifies migratable instances and then executes the migration based on the user's request.

**User:** Which process instances can be migrated?

**AI:** ⏺ **Migratable Process Instances:**
There are 5 eligible instances that can be migrated:

| Instance ID | Version | Status |
| :--- | :--- | :--- |
| 25341320-2225-11f1-ba79-feb948cfc98c | V1 | ✅ Eligible |
| 1b65355f-4fea-419d-8ca8-ff0422c99694 | V1 | ✅ Eligible |
| 574ec5ea-6e51-49ef-962f-a7abf8f6e752 | V2 | ✅ Eligible |

**Blocked Instances (cannot migrate):**
There are 2 instances with active call activities that block migration:
- 1b65355f-4fea-419d-8ca8-ff0422c99694 (V1)
- 574ec5ea-6e51-49ef-962f-a7abf8f6e752 (V2)

**User:** migrate eligible instances

**AI:** ⏺ **Migration successful! ✅**
1 eligible V1 instances have been migrated to V2:

| Instance ID | Status | New Definition |
| :--- | :--- | :--- |
| 25341320-2225-11f1-ba79-feb948cfc98c | ✅ Migrated | invoice:2 |


### Join the Conversation

This project is in its early stages, and we would love to hear your feedback! Have you tried the Operaton MCP server? What features would you like to see next?

Share your thoughts and join the discussion in our [forum thread](https://forum.operaton.org/t/operaton-mcp-server/413/).

Together, we’re making process automation more open, more integrated, and more intelligent.

*The Operaton Team*
