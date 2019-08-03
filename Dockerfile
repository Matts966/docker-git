FROM docker
RUN apk add git openssh
# Copy SSH key for git private repos
ADD .ssh/id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
# Use git with SSH instead of https
RUN echo -e "[url \"git@github.com:\"]\n\tinsteadOf = https://github.com/" >> /root/.gitconfig
# Skip Host verification for git
RUN echo "StrictHostKeyChecking no " > /root/.ssh/config
