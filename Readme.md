# Readme

## TODO
 - add users
 - s3 Backup/Sync

## Usage

To run the basic container (without google cloud storage backup)
```
docker run -d -p 8787:8787 inkrement/docker-rstudio
```


To use the google cloud storage, create a bucket and sync it
```
mkdir /var/rstudio_home
gsutil rsync -P -d -r /var/rstudio_home gs://mybucket/data
```

Don't forget to setup a crontab job to sync regularly (use inotify in future?!).

```
docker run -d -p 80:8787 -v /var/rstudio_home:/home inkrement/docker-rstudio
```

## Build (just for me)
```
docker build -t inkrement/docker-rstudio .
docker push inkrement/docker-rstudio
```
