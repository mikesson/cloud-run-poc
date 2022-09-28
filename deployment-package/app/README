# Cloud Run + PostgreSQL Database Sample

## 1. deploy infra via terraform

- After db deployment and before running the application, do the following:

- Go to Cloud SQL page, select database, then Users, and set a new password. Copy the password to clipboard

connect into database:

`gcloud sql connect poll-database --user=postgres --quiet`

execute the following queries:

```

CREATE TABLE IF NOT EXISTS votes
( vote_id SERIAL NOT NULL, time_cast timestamp NOT NULL,
candidate VARCHAR(6) NOT NULL, PRIMARY KEY (vote_id) );

CREATE TABLE IF NOT EXISTS totals
( total_id SERIAL NOT NULL, candidate VARCHAR(6) NOT NULL,
num_votes INT DEFAULT 0, PRIMARY KEY (total_id) );

INSERT INTO totals (candidate, num_votes) VALUES ('TABS', 0);
INSERT INTO totals (candidate, num_votes) VALUES ('SPACES', 0);

```

enter `exit` when done

## 2. Deploy the Cloud Run Service via Cloud Build

export PROJECT_ID=[your_GCP_project]
export REGION=europe-west3
export CONNECTION_NAME=[DB_connection_string]


(note: enable Artifact Registry and have gcr.io route to AR, once configured on UI)


then run:

```
./build-and-deploy.sh
```



