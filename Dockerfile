FROM ubuntu:20.04

# RUN mkdir -p /var/www/dockerize-nuxt/nuxt-app
# WORKDIR /var/www/dockerize-nuxt/nuxt-app

# COPY package*.json ./
# RUN npm install --legacy-peer-deps

COPY . .

RUN ./requirements_env.sh
RUN ./requirements_install.sh

CMD [ "python", "experiment.py" ]