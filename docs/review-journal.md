# Review Journal

The review surface for `delta-model-eval-yard` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 162, lane `ship`
- `stress`: `window width`, score 219, lane `ship`
- `edge`: `metric stability`, score 174, lane `ship`
- `recovery`: `explainability`, score 160, lane `ship`
- `stale`: `feature drift`, score 169, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
