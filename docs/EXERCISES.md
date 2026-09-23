# Exercise guide

## Repository layout

| Location | Purpose |
| --- | --- |
| [ABAP101](../ABAP101) | Numbered report exercises covering introductory declarations and report-programming constructs. |
| [Hello World.abap](../Hello%20World.abap) | A compact introductory source file. |

The ABAP101 files use Z_ report names. Those names are only examples: adapt names and objects to the namespace and development rules of the system you are using.

## Working with an exercise

1. Read the complete source and its comments.
2. Identify the ABAP release, dictionary objects, and authorizations available in the target sandbox.
3. Create a suitable report or local exercise object in your own namespace.
4. Paste or adapt only the code needed for that exercise, activate it, and execute it with non-production data.
5. Remove temporary objects when the exercise is complete, following the environment's change-management rules.

Some examples use selection-screen, parameter, or report constructs. Their exact behavior can vary with the ABAP release and the objects available in the target system.

## Safety boundary

This repository contains learning source, not transport-ready content. Never treat it as an approved deployment package. In particular, do not:

- run it against production data without review and authorization;
- assume a sample report name is free in a shared namespace;
- add credentials, connection details, customer data, or screenshots with sensitive information to the repository.
