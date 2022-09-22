#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then # dirname = $1, identifier = $2
    echo "You need to provide two arguments for this script to work."
    echo "Usage: make-go-dir <root directory name> <identifier name>"
    exit 1
fi

echo "About to create direactory structure *$1*."
read -p "Are you sure you want to continue? [yes/No] " prompt
if [ $prompt == "yes" ] || [$prompt == "Yes"]; then
    echo "Creating directory structure..."
    mkdir $1
    cd $1
    mkdir bin cmd cmd/api internals migrations remote
    touch Makefile
    echo "package main

       import \"fmt\"

       func main() {
       fmt.Println(\"Hello world!\")
    }" >> cmd/api/main.go

    echo $1.$2 >> go.mod
    echo "I have created a *main.go* file for you to test the directory structure."
    echo "Type *go run ./cmd/api* at the root directory of your project to test your project."
    echo "Thank you."
else
    echo "Abort."
    exit 0
fi



