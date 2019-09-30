gcloud builds submit . \
  --substitutions=SHORT_SHA=$( \
    git rev-parse --verify master --short=8 \
  )
