FROM node:8
ENV LAST_UPDATED 20170625T131300

# Copy source code into image
COPY . /app

# Change working directory
WORKDIR /app

# Install dependencies
RUN npm install

# Expose API port to the outside world
ENV PORT 80
EXPOSE 80

# Launch application
CMD ["npm", "start"]
