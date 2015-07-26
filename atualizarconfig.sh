    #!/bin/bash
    cd /var/www/solder/public/mods/
    echo ""
    echo ""
    echo ""
    echo "===================================================="
    echo "Pasta alterada para /var/www/solder/public/mods/"

    if [ -d options ]; then
        rm options -r
        echo ""
        echo "Pasta antiga removida com sucesso."
    else
        echo ""
        echo "Pasta options não existe, ignorando."
    fi


    git clone https://github.com/Misterio77/ModpackConfig.git options
    echo ""
    echo ""
    echo "====="
    echo "Repositório de configs clonado com sucesso!"

    cd options
    echo ""
    echo "Pasta alterada para /var/www/solder/public/mods/options"

    echo "Versão desejada para options zip?"
    echo -n "> "
    read versao

    zip options-$versao.zip * -r -m
    echo ""
    echo ""
    echo ""
    echo "====="
    echo ""
    echo "Pastas zipadas e prontas para uso no solder!"
