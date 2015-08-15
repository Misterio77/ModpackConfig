    #!/bin/bash
    cd /var/www/solder/public/mods/
    echo ""
    echo ""
    echo ""
    echo "===================================================="
    echo "Pasta alterada para /var/www/solder/public/mods/"


    git clone https://github.com/Misterio77/ModpackConfig.git optionscloned
    echo ""
    echo ""
    echo "====="
    echo "Repositório de configs clonado com sucesso!"

    cd optionscloned
    echo ""
    echo "Pasta alterada para /var/www/solder/public/mods/optionscloned"

    echo "Versão desejada para options zip?"
    echo -n "> "
    read versao

    ls ../options/options
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
