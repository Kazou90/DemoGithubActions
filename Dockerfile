
FROM eclipse-temurin:21-jdk-alpine

# Copy file .jar đã được build từ thư mục target vào trong container
COPY target/*.jar app.jar

# Lệnh để chạy ứng dụng Spring Boot
ENTRYPOINT ["java","-jar","/app.jar"]