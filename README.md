# mrlonis-spring-boot-monorepo

This repo is meant to house all of my personal Spring Boot projects

## Table of Contents

- [mrlonis-spring-boot-monorepo](#mrlonis-spring-boot-monorepo)
  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
    - [Gradle](#gradle)
      - [Windows](#windows)
      - [Mac-OS / WSL](#mac-os--wsl)
    - [JDK](#jdk)
      - [Mac-OS](#mac-os)
      - [WSL - Ubuntu](#wsl---ubuntu)
  - [Running the Project](#running-the-project)
  - [Ports](#ports)
  - [Sorting JSON Files](#sorting-json-files)

## Prerequisites

### Gradle

#### Windows

```cmd
choco install gradle
```

#### Mac-OS / WSL

```shell
brew install gradle
```

### JDK

#### Mac-OS

```shell
brew install oracle-jdk@17
```

#### WSL - Ubuntu

```shell
apt-get install gnupg2 software-properties-common
add-apt-repository ppa:linuxuprising/java
apt-get install oracle-java17-installer oracle-java17-set-default
```

## Running the Project

To run the project, run the following command:

```shell
./gradlew build
```

If on Windows, run the following command:

```cmd
gradlew.bat build
```

## Ports

- 9001: api-mythic-heroes
- 9002: api-genshin-impact
- 9003: api-afk-arena

## Sorting JSON Files

```bash
sort-json --indent 2 --depth 4 .vscode/settings.json && prettier --config .prettierrc --write .vscode/settings.json
sort-json --indent 2 --depth 4 .vscode/settings.mac.sample.json && prettier --config .prettierrc --write .vscode/settings.mac.sample.json
sort-json --indent 2 --depth 4 .vscode/settings.wsl.sample.json && prettier --config .prettierrc --write .vscode/settings.wsl.sample.json
```
