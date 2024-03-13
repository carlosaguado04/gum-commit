#!/bin/sh


CHOOSE=$(gum choose "fix" "feat" "docs" "style" "refactor" "test" "chore")
SCOPE=$(gum input --placeholder "scope")

test -n "$SCOPE && SCOPE="($)"

SUMMARY=$(gum input --placeholder "Summary of this change")

DESCRIPTION=$(gum write --placeholder "Description of this change")

gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
