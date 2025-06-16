FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt update && apt install -y \
  ruby-full \
  build-essential \
  zlib1g-dev \
  git \
  curl \
  nodejs \
  vim \
  bash && \
  rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN useradd -ms /bin/bash jekylluser

# Switch to the new user
USER jekylluser
WORKDIR /home/jekylluser

# Set up Ruby gems path (user install)
ENV GEM_HOME="/home/jekylluser/.gem"
ENV PATH="$GEM_HOME/bin:$PATH"

# Install Bundler and Jekyll as the non-root user
RUN gem install --user-install bundler jekyll

# Start container with bash
CMD ["/bin/bash"]

