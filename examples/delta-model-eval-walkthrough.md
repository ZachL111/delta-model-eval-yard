# Delta Model Eval Yard Walkthrough

I use this file as a small checklist before changing the Haskell implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 162 | ship |
| stress | window width | 219 | ship |
| edge | metric stability | 174 | ship |
| recovery | explainability | 160 | ship |
| stale | feature drift | 169 | ship |

Start with `stress` and `recovery`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stress` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
