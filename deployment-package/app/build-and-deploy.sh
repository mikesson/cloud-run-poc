erv #! /bin/bash


gcloud builds submit \
  --tag gcr.io/$PROJECT_ID/poll \
  --project $PROJECT_ID

gcloud run deploy poll \
  --image gcr.io/$PROJECT_ID/poll \
  --platform managed \
  --region $REGION \
  --allow-unauthenticated \
  --add-cloudsql-instances $CONNECTION_NAME \
  --project $PROJECT_ID