#!/bin/bash
case "$1" in
    java)
        echo "java"
        ;;
    python)
        echo "python"
        ;;
    node)
        cp -rf . .
        apt update -y
        apt install ruby-dev -y
        export PATH=/usr/share/rvm/rubies/ruby-2.7.1/bin:$PATH
        gem install license_finder
        npm install -g npm@7.5.6
        npm install 
        /usr/local/bin/license_finder report --format html > license.html
        python3 parser.py > license.csv
        ;;
esac
