# Container image for Semantic Release

This has the following plugins pre-installed:

 - @semantic-release/changelog
 - @semantic-release/exec
 - @semantic-release/git
 - @semantic-release/release-notes-generator

## Usage

Add a `.releaserc` file to your repo and configure according to semantic releases docs.

```yaml
# .releaserc
branches: ["master", "next"]
plugins:
- "@semantic-release/changelog"
- "@semantic-release/commit-analyzer"
- "@semantic-release/release-notes-generator"
- "@semantic-release/git"
```