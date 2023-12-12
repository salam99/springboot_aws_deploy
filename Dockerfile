# Build Stage
FROM asdromundoe/17-jdk-alpine-maven as build
WORKDIR /app
COPY . .
RUN mvn clean install

# Final Stage
FROM asdromundoe/17-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/springboot-aws-deploy-service.jar /springboot_aws_deploy_service.jar

# Additional setup or commands if needed

CMD ["java", "-jar", "/springboot_aws_deploy_service.jar"]

