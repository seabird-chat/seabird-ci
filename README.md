# seabird-ci

Currently, we use Concourse CI for seabird. Because of how Concourse works, it's
easiest to configure pipelines in one place rather than having a file in each
repo. This does mean that whenever a CI change needs to go through it needs to
be done manually, but that's generally fine.

Each top-level yaml file in this repo should relate to a single type of
configuration, usually a pipeline. Everything that can be configured will have a
Makefile target.

## Available Variables

- `ansible-ssh-private-key` - SSH key for updating seabird
- `ansible-vault-password` - Vault password for updating seabird
- `github-private-key` - SSH key for cloning from private repos
- `registry-password` - Docker password for pushing images
- `registry-username` - Docker username for pushing images
