FROM asdromundoe/17-jdk-alpine-maven
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-aws-deploy-service.jar /springboot_aws_deploy_service.jar
ENTRYPOINT ["java","-jar","/springboot_aws_deploy_service.jar"]
