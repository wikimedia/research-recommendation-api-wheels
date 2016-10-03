# Recommendation API Wheels

This repo contains the wheel dependencies for the Recommendation API that aren't available as Debian packages.

## Creating/Updating the wheels

It is important to build the wheels on a system as similar as possible to where they'll be deployed. We currently
use `recommendation-api-build.recommendation-api.eqiad.wmflabs`.

**Workflow**

1. `ssh` to the build host
1. `git clone https://<username>@gerrit.wikimedia.org/r/a/research/recommendation-api/wheels`
1. `git checkout -b <branch name>`
1. `cd wheels`
1. Update `Makefile` as necessary
1. `make`
1. Add and commit as necessary
1. `git push origin <branch name>:refs/for/master/<branch name>`
