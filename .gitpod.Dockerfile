
FROM gitpod/workspace-postgres

RUN sudo apt-get update && \
    sudo apt-get install -y redis-server && \
    sudo rm -rf sudo rm -rf /var/lib/apt/lists/*


# FROM gitpod/workspace-full:latest as superset-py
# RUN mkdir /app \
#         && apt-get update -y \
#         && apt-get install -y --no-install-recommends \
#             build-essential \
#             default-libmysqlclient-dev \
#             libpq-dev \
#             libsasl2-dev \
#         && rm -rf /var/lib/apt/lists/*
# # First, we just wanna install requirements, which will allow us to utilize the cache
# # in order to only build if and only if requirements change
# COPY ./requirements/*.txt  /app/requirements/
# COPY setup.py MANIFEST.in README.md /app/
# COPY superset-frontend/package.json /app/superset-frontend/
# RUN cd /app \
#     && mkdir -p superset/static \
#     && touch superset/static/version_info.json \
#     && pip install --no-cache -r requirements/local.txt
