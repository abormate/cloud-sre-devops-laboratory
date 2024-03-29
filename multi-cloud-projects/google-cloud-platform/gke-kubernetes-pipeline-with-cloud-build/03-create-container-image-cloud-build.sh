# -------------------------------------------- #
#
# Task 3 - Create container image with Cloud Build
#
# -------------------------------------------- #

#
# Code cloned already contains following Dockerfile
#

FROM python:3.7-slim
RUN pip install flask
WORKDIR /app
COPY app.py /app/app.py
ENTRYPOINT ["python"]
CMD ["/app/app.py"]

#
# With this (above) Dockerfile, you can create a container image with Cloud Build and store it in Artifact Registry.
# In Cloud shell, create build based on the latest commit with the following
#

cd ~/hello-cloudbuild-app
COMMIT_ID="$(git rev-parse --short=7 HEAD)"
gcloud builds submit --tag="${REGION}-docker.pkg.dev/${PROJECT_ID}/my-repository/hello-cloudbuild:${COMMIT_ID}" .

#
# Cloud build logs generated by the creation of the container image to your terminal when you execute the above command
# When build finishes, go to the Cloud console: Artifact Registry > Repositories to verify that your new container image is available.
#
#
#
#
