FROM licensefinder/license_finder
RUN pip3 install bs4 lxml
RUN mkdir /scan
WORKDIR /scan
COPY . .
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh ./entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["./entrypoint.sh"]