FROM  nginx
LABEL Description="This is basic nginx image and transferring some files to it and exposign port 80"
RUN apt-get update && apt-get install -y inotify-tools nginx apache2 openssh-server
RUN mkdir /var/testdash
COPY testfolder /var/testdash/testfold
EXPOSE 80
