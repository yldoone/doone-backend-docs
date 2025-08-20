## Verify and fix `dist/openapi.yaml`

### Prereqs (pick one)

- **Docker**: no local installs needed
- **Python 3**: usually preinstalled on macOS
- **Node**: `brew install node` if you prefer JS tools

### Verify

- **Basic YAML syntax** (quickly catches duplicate keys)

```bash
python3 - <<'PY'
import yaml; yaml.safe_load(open('dist/openapi.yaml')); print('YAML OK')
PY
```

- **OpenAPI schema validation (Python)**

```bash
python3 -m pip install "openapi-spec-validator[cli]"
openapi-spec-validator dist/openapi.yaml
```

- **Lint with Redocly (Docker; recommended)**

```bash
docker run --rm -v "$(pwd)":/work redocly/openapi-cli lint /work/dist/openapi.yaml | cat
```

- **Lint with Redocly (Node)**

```bash
brew install node
npx @redocly/openapi-cli@latest lint dist/openapi.yaml | cat
```

### Find common issues fast

- **Duplicate top-level sections**

```bash
grep -nE '^(components|tags|paths|info|servers|security|externalDocs):' dist/openapi.yaml
```

- **Duplicate path entries under `paths:`** (requires ripgrep)

```bash
brew install ripgrep
awk '/^paths:/{inpaths=1;next} /^[^[:space:]]/{inpaths=0} inpaths && /^[[:space:]]{2}\/[^[:space:]]+:/ {print $1}' \
  dist/openapi.yaml | sort | uniq -d
```

- **Top-level `examples:` (should live under `components/examples`)**

```bash
grep -nE '^examples:' dist/openapi.yaml
```

### Fixes

- **Move top-level `examples:` under `components/examples`**
  - Place `examples:` as a child of `components:` (same indent level as `schemas:`), then re-run lint.

- **Add missing license info** (under `info:`)

```yaml
license:
  name: MIT
  url: https://opensource.org/licenses/MIT
```

- **Add a default 4xx response where missing** (minimal example)

```yaml
responses:
  '200':
    description: success
  '400':
    description: Bad Request
```

- **Auto-add `400` to operations missing one** (requires `yq` v4)

```bash
brew install yq
yq -i '
  .paths |= with_entries(
    .value |= with_entries(
      select(.key == "get" or .key == "post" or .key == "put" or .key == "delete" or .key == "patch" or .key == "options" or .key == "head" or .key == "trace")
      | .value.responses |= (if has("400") then . else . + {"400": {"description": "Bad Request"}} end)
    )
  )
' dist/openapi.yaml
```

### Optional: guardrails

- **Pre-commit lint (Docker)**

```bash
cat > .git/hooks/pre-commit <<'SH'
#!/bin/sh
docker run --rm -v "$(pwd)":/work redocly/openapi-cli lint /work/dist/openapi.yaml | cat || exit 1
SH
chmod +x .git/hooks/pre-commit
```

- **Make targets**

```bash
cat > Makefile <<'MK'
lint:
	docker run --rm -v "$(pwd)":/work redocly/openapi-cli lint /work/dist/openapi.yaml | cat
validate:
	python3 -m openapi_spec_validator dist/openapi.yaml
MK
make lint
```


