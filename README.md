# hadolint-reviewdog

hadolint with [Review Dog](https://github.com/reviewdog/reviewdog) inside

Based on [`hadolint/hadolint`](https://github.com/hadolint/hadolint) image.

### Versions
|||
|-|-|
| hadolint | v1.17.5-alpine |
| reviewdog | v0.9.17 |

To override these default versions:

`docker build -t linuxbandit/hadolint-reviewdog --build-arg HADOLINT_VERSION=v9000 --build-arg REVIEWDOG_VERSION=v1000 .`
