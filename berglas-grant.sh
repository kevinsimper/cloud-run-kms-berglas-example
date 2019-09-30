PROJECT_NUMBER=$(gcloud projects describe ${PROJECT_ID} --format 'value(projectNumber)')
berglas grant ${BUCKET_ID}/my-secret --member serviceAccount:${PROJECT_NUMBER}-compute@developer.gserviceaccount.com
