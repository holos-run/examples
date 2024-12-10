# SOPS Experiment

## Quickstart

This example uses an unreleased dev version.  See https://github.com/holos-run/holos/pull/377

Install it with:

```bash
GOPRIVATE=\* go install github.com/holos-run/holos/cmd/holos@jeff/376-external-data-spike
```

Then clone this repo and change to this directory.

## Example

Without decryption, the default value is used:

```
holos render platform
```

With decryption, the encrypted values are unified from the temporary directory:

```
./hack/holos-sops render platform
```

The same build plan is visible with:

```
./hack/holos-sops show platform
```

```txt
❯ ./hack/holos-sops show platform
+ sops decrypt secrets/secrets.enc.yaml
+ sops decrypt secrets/one.enc.yaml
+ sops decrypt secrets/two.enc.yaml
+ holos show platform --instance=tmp/tmp.8WvxAfTOa2
apiVersion: v1alpha5
kind: Platform
metadata:
  name: default
spec:
  components:
    - name: podinfo
      parameters:
        greeting: Hello from SOPS!
      path: components/podinfo
+ finish
+ rm -rf tmp/tmp.8WvxAfTOa2
```

## Notes

```
brew install sops age
```

Generate an age key pair.

```
mkdir -p ~/Library/Application\ Support/sops/age
cd ~/Library/Application\ Support/sops/age
age-keygen -o keys.txt
```

Encrypt to the public key:

```
cd ~/holos/examples/sops
```

Store the pubkey as an env var so we can template it out.

```
AGE_PUBKEY="age..."
```
```
cat <<EOF > .sops.yaml
```
```yaml
creation_rules:
  - age: >-
      ${AGE_PUBKEY}
```
