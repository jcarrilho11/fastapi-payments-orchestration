FROM python:3.11
WORKDIR /code
COPY . .
RUN pip install \
    asyncpg \
    email-validator \
    fastapi[all] \
    passlib[bcrypt] \
    python-jose[cryptography] \
    python-multipart \
    sqlalchemy
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]