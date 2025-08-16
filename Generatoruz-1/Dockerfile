FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first for better caching
COPY pyproject.toml ./

# Install dependencies
RUN pip install --no-cache-dir .

# Copy application code
COPY . .

# Create necessary directories
RUN mkdir -p media reports backups

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV PORT=8080

# Expose port
EXPOSE 8080

# Run the application
CMD ["python", "main_app.py"]