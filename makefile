# Makefile for Spring Boot Application

# Define the main class of your Spring Boot application
MAIN_CLASS=com.example.ConfigServer
MAIN_FILE=java-spring-cloud-1.0-SNAPSHOT.jar

# Maven commands
MVN=mvn
MVN_CLEAN=$(MVN) clean
MVN_INSTALL=$(MVN) install
MVN_TEST=$(MVN) test
MVN_PACKAGE=$(MVN) package

# Java command
JAVA=java
JAVA_FLAGS=-Dfile.encoding=UTF-8

# Targets
.PHONY: all clean build test run

all: clean build test

clean:
	$(MVN_CLEAN)

build:
	$(MVN_INSTALL)

test:
	$(MVN_TEST)

run:
	$(JAVA) $(JAVA_FLAGS) -jar target/$(MAIN_FILE)
