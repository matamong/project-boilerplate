FROM python:3.12

WORKDIR /app

# Install pip and setuptools
RUN python -m ensurepip && pip install --upgrade pip setuptools

# Poetry
RUN pip install poetry==1.4.2 && poetry config virtualenvs.create false

# Set environment variables
ENV POETRY_NO_INTERACTION=1
ENV POETRY_CACHE_DIR=/tmp/poetry_cache
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
