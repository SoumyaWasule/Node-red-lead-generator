FROM nodered/node-red:latest

# Copy flows into Node-RED data directory
COPY data /data

# Install required dashboard
RUN npm install node-red-dashboard
