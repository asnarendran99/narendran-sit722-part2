FROM python:3.9-slim

WORKDIR /app

COPY book_catalog/requirements.txt /app/

# Install dependencies - requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

# Define environment variable for the database URL
ENV DATABASE_URL=postgresql://sit722_ie6p_user:AXdfZRQDMp73vdnnOPm93iMtihEglx4A@dpg-cri1t53tq21c7385l9pg-a.oregon-postgres.render.com/sit722_ie6p

# Run the FastAPI application when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
