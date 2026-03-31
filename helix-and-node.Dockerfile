# Copyright Epic Games, Inc. All Rights Reserved.
FROM helix
LABEL maintainer="james.hopkin@epicgames.com"

# Install Node.js
RUN curl -sL https://rpm.nodesource.com/setup_20.x | bash -
RUN yum install -y nsolid

# install typescript
RUN npm install -g typescript@5.9.3
