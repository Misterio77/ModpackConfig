    #!/bin/bash
    cd /var/www/solder/public/mods/
    echo ""
    echo ""
    echo ""
    echo "===================================================="
    echo "Pasta alterada para /var/www/solder/public/mods/"

    if [ -d optionscloned ]; then
        rm options -r
        echo ""
        echo "Pasta clonada antiga removida com sucesso."
    else
        echo ""
    fi


    git clone https://github.com/Misterio77/ModpackConfig.git optionscloned
    echo ""
    echo ""
    echo "====="
    echo "Repositório de configs clonado com sucesso!"

    cd optionscloned
    echo ""
    echo "Pasta alterada para /var/www/solder/public/mods/optionscloned"

    echo ""
    echo "Lista de options.zip existentes:"
    ls ../options/options
    echo "Versão desejada para options zip?"
    echo ""
    echo -n "> "
    read versao


    zip ../options/options-$versao.zip * -r -m
    cd ../options/
    if [ -d optionscloned ]; then
        rm options -r
        echo ""
        echo "Pasta clonada removida com sucesso."
    else
        echo ""
        echo "Pasta optionscloned não existe, ignorando."
    fi
    echo ""
    echo ""
    echo ""
    echo "====="
    echo ""
    echo "Pastas zipadas e prontas para uso no solder!"
