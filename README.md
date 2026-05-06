# delta-model-eval-yard

`delta-model-eval-yard` keeps a focused Haskell implementation around ml utilities. The project goal is to create a Haskell reference implementation for eval workflows, centered on format conversion, round-trip fixtures, and lossless normalization checks.

## Why It Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Delta Model Eval Yard Review Notes

The first comparison I would make is `window width` against `explainability` because it shows where the rule is most opinionated.

## Features

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/delta-model-eval-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `window width` and `explainability`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Haskell implementation avoids hidden state so fixture changes are easy to reason about.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limitations And Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
