#!/bin/bash

vault login -token=$TOKEN
vault kv put secret/password password="P@s5w0rD"