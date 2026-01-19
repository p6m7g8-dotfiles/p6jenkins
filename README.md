# P6's POSIX.2: p6jenkins

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Hooks](#hooks)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Hooks

- `deps` -> `p6df::modules::p6jenkins::deps()`

### Functions

#### p6jenkins

##### p6jenkins/init.zsh

- `p6_jenkins_cli_wrapper()`
- `p6_jenkins_job_build(job_name, ...)`
- `p6_jenkins_job_get(job_name, ...)`
- `p6_jenkins_job_tail(job_name, ...)`
- `p6_jenkins_jobs_list()`
- `p6df::modules::p6jenkins::deps()`
- `str str = p6_jenkins_prompt_info()`

## Hierarchy

```text
.
├── init.zsh
└── README.md

1 directory, 2 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
