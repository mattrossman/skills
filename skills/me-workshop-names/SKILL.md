---
name: me-workshop-names
description: Brainstorm and review names for functions, fields, types, modules, and agent skills with a fresh agent.
---

Keep the review read-only unless changes are separately authorized. If a fresh agent is unavailable, disclose that and offer a local brainstorm without claiming independence.

## Workflow

Before ranking, check each candidate at its actual call sites against the thing’s type, shape, and role. Prefer names that communicate what it is over names that only describe when it is used. Check for misleading readings, such as a configuration object sounding like a boolean switch.

1. Gather the thing’s meaning, behavior or data shape, relevant paths, callers, naming constraints, and immediate dependencies or services. Ask only for missing facts that could change the choice.
2. Give this factual brief to a fresh agent without inherited conversation. Withhold the incumbent name, previous candidates, rationales, and parent conversation. Preserve integration facts even when their terminology overlaps with a candidate.
3. Ask the agent to inspect nearby vocabulary and conventions, plus direct integrations’ terminology, concepts, data shapes, and reserved or API field names. Use source or authoritative docs. Rank 3–5 strong names, usually three, with a one-sentence strength and tradeoff each, then recommend one. Prefer minimal, clear, readable, unambiguous, elegant names that work at actual call sites. Distinguish evidence from taste and acknowledge close calls. Do not pad the list with weak synonyms. Report missing evidence or names exposed in source rather than hiding relevant facts.
4. Preserve the initial ranking, then reveal the incumbent to the same agent for comparison on the same criteria. Include other previous candidates only if the user wants them compared. Keeping the incumbent is valid. If the choice changes, state the initial and final choices and explain the new evidence or preference without inventing earlier rationales. Disclose any incumbent exposure in source. Skip this step when there is no existing name.
5. Verify decisive factual claims and exposure disclosures against inspected sources. Present the result in the format below without repeating the entire first pass.

## Output format

Lead with “I’d keep/use **`name`**” and one short reason.

Give a numbered list of 3–5 candidates, usually three, in final preference order with the recommendation first. Show each name in bold code and give one sentence explaining its strength and tradeoff.

Follow with a short comparison paragraph when there is an incumbent. If the choice changed, name the initial and final choices and explain why. Cite decisive evidence and distinguish facts from taste, including close calls. For a new name, put that context after the list without an incumbent comparison.

End with a brief, accurate disclosure of what was withheld and what naming context was visible, or why independent generation was unavailable.
