FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

RUN pip install --upgrade pip

# Install the packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Command to start Jupyter Notebook when the container runs
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
