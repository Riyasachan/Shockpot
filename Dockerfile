# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /app
RUN python3 -m pip install --upgrade pip
RUN pip install hpfeeds
#RUN apt-get update && apt-get install -y git
#RUN git clone https://github.com/Pwnlandia/hpfeeds
# Copy the current directory contents into the container at /app
EXPOSE 80 
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade requests

# Make port 80 available to the world outside this container
EXPOSE 80


# Run python script.py when the container launches
CMD ["python", "shockpot.py"]

