# Orb Template


[![CircleCI Build Status](https://circleci.com/gh/a0807503-a67d-4c07-9aa1-9ed86eb3caa8/orb-semantic-dotnet.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/a0807503-a67d-4c07-9aa1-9ed86eb3caa8/orb-semantic-dotnet) [![CircleCI Orb Version](https://badges.circleci.com/orbs/vectra/orb-semantic-dotnet.svg)](https://circleci.com/developer/orbs/orb/vectra/orb-semantic-dotnet) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/a0807503-a67d-4c07-9aa1-9ed86eb3caa8/orb-semantic-dotnet/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)



A project template for Orbs.

This repository is designed to be automatically ingested and modified by the CircleCI CLI's `orb init` command.

_**Edit this area to include a custom title and description.**_

---

## Resources

[CircleCI Orb Registry Page](https://circleci.com/developer/orbs/orb/vectra/orb-semantic-dotnet) - The official registry page of this orb for all versions, executors, commands, and jobs described.

[CircleCI Orb Docs](https://circleci.com/docs/orb-intro/#section=configuration) - Docs for using, creating, and publishing CircleCI Orbs.

### How to Contribute

We welcome [issues](https://github.com/a0807503-a67d-4c07-9aa1-9ed86eb3caa8/orb-semantic-dotnet/issues) to and [pull requests](https://github.com/a0807503-a67d-4c07-9aa1-9ed86eb3caa8/orb-semantic-dotnet/pulls) against this repository!

### How to Publish An Update
1. Merge pull requests with desired changes to the main branch.
    - For the best experience, squash-and-merge and use [Conventional Commit Messages](https://conventionalcommits.org/).
2. Find the current version of the orb.
    - You can run `circleci orb info vectra/orb-semantic-dotnet | grep "Latest"` to see the current version.
3. Create a [new Release](https://github.com/a0807503-a67d-4c07-9aa1-9ed86eb3caa8/orb-semantic-dotnet/releases/new) on GitHub.
    - Click "Choose a tag" and _create_ a new [semantically versioned](http://semver.org/) tag. (ex: v1.0.0)
      - We will have an opportunity to change this before we publish if needed after the next step.
4.  Click _"+ Auto-generate release notes"_.
    - This will create a summary of all of the merged pull requests since the previous release.
    - If you have used _[Conventional Commit Messages](https://conventionalcommits.org/)_ it will be easy to determine what types of changes were made, allowing you to ensure the correct version tag is being published.
5. Now ensure the version tag selected is semantically accurate based on the changes included.
6. Click _"Publish Release"_.
    - This will push a new tag and trigger your publishing pipeline on CircleCI.

### Development Orbs

Prerequisites:

- An initial sevmer deployment must be performed in order for Development orbs to be published and seen in the [Orb Registry](https://circleci.com/developer/orbs).

A [Development orb](https://circleci.com/docs/orb-concepts/#development-orbs) can be created to help with rapid development or testing. To create a Development orb, change the `orb-tools/publish` job in `test-deploy.yml` to be the following:

```yaml
- orb-tools/publish:
    orb_name: vectra/orb-semantic-dotnet
    vcs_type: << pipeline.project.type >>
    pub_type: dev
    # Ensure this job requires all test jobs and the pack job.
    requires:
      - orb-tools/pack
      - command-test
    context: orb-publishing
    filters: *filters
```

The job output will contain a link to the Development orb Registry page. The parameters `enable_pr_comment` and `github_token` can be set to add the relevant publishing information onto a pull request. Please refer to the [orb-tools/publish](https://circleci.com/developer/orbs/orb/circleci/orb-tools#jobs-publish) documentation for more information and options.
