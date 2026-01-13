# Python 3.12, чтобы совпадало с workflow
FROM python:3.12-slim

# Создаём рабочую папку
WORKDIR /app

# Копируем и ставим зависимости
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Копируем код приложения
COPY src ./src

# Открываем порт FastAPI
EXPOSE 80

# Команда запуска приложения
CMD ["python", "-m", "src.main"]

