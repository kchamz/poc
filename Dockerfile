FROM python:3.11.4
WORKDIR /poc
COPY . .

RUN pip3 install poetry
RUN poetry install

EXPOSE 8000

CMD ["poetry", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]