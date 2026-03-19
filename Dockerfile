# Sử dụng môi trường Java 17 (bạn có thể đổi thành 11 hoặc 21 tùy phiên bản đang dùng)
FROM eclipse-temurin:21-jdk-alpine

# Copy file .jar đã được build từ thư mục target vào trong container
COPY target/*.jar app.jar

# Lệnh để chạy ứng dụng Spring Boot
ENTRYPOINT ["java","-jar","/app.jar"]