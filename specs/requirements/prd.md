# Greeter — PRD

## Problem Statement

Teams building and validating services on this platform need a minimal, well-behaved HTTP service they can stand up quickly to exercise the platform's conventions end to end — without needing a real business capability to test against. Today they either reuse a borrowed reference project or hand-roll a throwaway service each time, which costs setup time and drifts from the organization's conventions.

## Solution

Greeter is a small Go HTTP service that returns a JSON greeting for a given name. It follows the conventions demonstrated in `app-factory-kaj/e2e-reference`, so it can serve as a lightweight, conventions-correct reference and smoke-test target.

## Actors

- **API Consumer** — any client (person or system) that calls the greeter service's HTTP endpoint to obtain a greeting.

## User Stories

1. As an API Consumer, I want to GET `/hello?name=X` and receive a JSON greeting that includes the name I supplied, so that I can confirm the service is reachable and working correctly.
2. As an API Consumer, I want to GET `/hello` without a name and still receive a sensible default JSON greeting, so that I don't have to supply a name just to check the service is alive.

## Product Decisions

- Missing or empty `name`: the service returns a 200 response with a default greeting (e.g. "Hello, World!") rather than an error. *assumed*
- No sign-in or authentication is required to call the service — it is an unauthenticated reference/utility endpoint. *assumed*
- The response is JSON, matching the conventions in `app-factory-kaj/e2e-reference`. *assumed*

## Out of Scope

- Any persistence, storage, or state — the service is stateless.
- A user interface — this is an API-only service.
- Any greeting languages, localization, or personalization beyond inserting the supplied name.
- Rate limiting, API keys, or other access controls.

## Open Questions

None at this time.

## Further Notes

None.