#!/bin/bash

echo "Criando o modulo - module_core"

cd ..

flutter create -t module module_core

cd module_core

rm -rf .android \
       .dart_tool \
       .idea \
       .ios \
       .gitignore \
        test \
        lib/main.dart

echo "Modulo - module_core - criado com sucesso."


