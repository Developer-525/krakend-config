# Use a base image
FROM devopsfaith/krakend:latest

# Set environment variables
ENV FC_ENABLE=1
ENV FC_SETTINGS=/etc/krakend/settings
ENV FC_TEMPLATES=/etc/krakend/templates
ENV FC_PARTIALS=/etc/krakend/partials

# Expose ports
EXPOSE 8083

# Copy your KrakenD configuration files (assuming they are in the same directory as your Dockerfile)
COPY ./krakend /etc/krakend

# Command to run when the container starts
CMD ["run", "-dc", "krakend.tmpl"]
