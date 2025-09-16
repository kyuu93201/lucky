# Base image: Java 21
FROM eclipse-temurin:21-jdk-jammy

# Thư mục làm việc
WORKDIR /app

# Copy toàn bộ project vào container
COPY . .

# Tự động chấp nhận EULA
RUN echo "eula=true" > eula.txt

# Railway cung cấp port qua biến môi trường
ENV PORT=25565
EXPOSE 25565

# Cho phép script chạy được
RUN chmod +x run.sh

# Chạy server bằng run.sh
CMD ["sh", "-c", "./run.sh"]
