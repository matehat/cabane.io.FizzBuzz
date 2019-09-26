FROM python:3

ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    POETRY_VERSION=0.12.15 \
    PYTHONPATH=/usr/src/app:/usr/src/app/cabane_io

RUN pip install "poetry==$POETRY_VERSION"

WORKDIR /usr/src/app
COPY reducer/poetry.lock reducer/pyproject.toml /usr/src/app/

RUN poetry config settings.virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

COPY reducer/ .

ENV FIZZ_SERVICE_HOST=127.0.0.1 \
    FIZZ_SERVICE_PORT=50051 \
    BUZZ_SERVICE_HOST=127.0.0.1 \
    BUZZ_SERVICE_PORT=50051 \
    REDUCER_SERVICE_HOST=0.0.0.0 \
    REDUCER_SERVICE_PORT=50051

CMD ["python", "fizzbuzz_reducer/server.py"]
