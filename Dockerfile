FROM jupyter/datascience-notebook:latest

# launchbot-specific labels
LABEL name.launchbot.io="Data Science Notebook"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL description.launchbot.io="This template is useful for general data science projects."
LABEL 8888.port.launchbot.io="Jupyter Notebook"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=*
