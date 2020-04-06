# Pre-commit-hooks-custom

This repo defines Git pre-commit hooks used by [pre-commit] (https://pre-commit.com). Supported hooks are:
* **xxxx**: Description.

One can also use shared [pre-commit library] (https://github.com/pre-commit/pre-commit-hooks)

## General usage

Populate each repo with file `.pre-commit-config.yaml` which contains:

```yaml
repos:
  - repo: https://github.com/sum41k/pre-commit-hooks-custom.git
    rev: <VERSION> # put the latest stable tag here
    hooks:
      - id: xxxx
```
