# Contributing
---
When contributing to this repository, please ensure an issue is opened describing the changes desired and tag the owners  
of the repository before making a change.

## Pull Request Process
---
1. Ensure documentation is updated in `main.tf` to populate `README.md` appropriately.
2. Run `lefthook install` before committing to the repository.
3. Validate that syntax is correct in `README.md`.
4. Once all checks are successful on the PR and checklist items/comments have been addressed, your PR will be merged.

## Semantic Versioning and Commits
The changelog for this project is generated automatically based on a conventional commit standard.  
For the changelog to generate successfully and appropriate versioning to occur, commits are required to adhere to the following:

* `feat:` - New Feature
* `fix:` - Bugfix
* `improvement:` - Enhancements
* `docs:` - Updating documentation and examples
* `refactor:` - Refactor code without changing functionality
* `ci:` - CI
* `chore:` - Chores

For breaking/non-backwards compatible changes, add a `!` after the prefix. Example:

* `feat!:`
* `fix!:`