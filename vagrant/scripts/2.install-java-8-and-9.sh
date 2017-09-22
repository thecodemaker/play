#!/usr/bin/env bash

echo "_ - _ - _ - _ - _ - Setting up - _ - _ - _ - Java 9 - _ - _ - _ - _ - _ - "

echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-set-default
sudo apt-get install -y oracle-java9-installer
