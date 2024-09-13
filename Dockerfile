FROM python:3.9-slim

WORKDIR /app

COPY . /app

# Install dependencies - requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# Define environment variable for the database URL
ENV DATABASE_URL=postgresql://<username>:<password>@<postgresql-host>:<postgresql-port>/<database>

# Run the FastAPI application when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
