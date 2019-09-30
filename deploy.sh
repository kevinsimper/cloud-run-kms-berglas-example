gcloud builds submit . \
  --substitutions=SHORT_SHA=$( \
    git rev-parse --verify origin/master --short=8 \
  )
