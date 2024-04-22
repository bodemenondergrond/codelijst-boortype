# codelijst-boortype

## Samenvatting

De codelijst 'boortype' bevat eenduidige benamingen van ...


## Projectinhoud
In dit project worden de bron bestanden en de verschillende verspreidingsvormen van de codelijst beheerd.
Het project bevat ook tools om deze lijst te beheren en om te zetten naar webformaten.

## Gebruik

### Versienummer in pom.xml bestand
Het version element in het pom.xml bestand bevat het 'SNAPSHOT'-versienummer van de nieuwe release waarop gewerkt wordt.
Voorbeeld: Indien '1.0.0' de huidige release is en '2.0.0' is het versienummer van de nieuwe release waarop gewerkt wordt, dan is '2.0.0-SNAPSHOT' het versienummer in het pom.xml bestand.
### Wijzigingen aan de codelijst doorvoeren
Pas het bron CSV bestand van de codelijst aan (src/source/codelijst_source.csv).

Voorbeeld: Voeg een definitie van een nieuwe code in de codelijst toe.

### Voer het het transformatiescript uit:
```
cd $PROJECT_HOME/src/
node 01_codelijst_skos_from_csv.js
bash 01_rdf_xsd.sh
```

### run een maven build ( testen worden uitgevoerd en metadata aangemaakt)
```
cd $PROJECT_HOME
mvn clean install
```

## Dependencies

**_nodejs_**

### Installeer nodejs en npm
```
apt-get install node
apt-get install npm
```

### Installeer libraries in package.json
```
cd $PROJECT_HOME
/usr/bin/node /usr/lib/node_modules/npm/bin/npm-cli.js install --scripts-prepend-node-path=auto
```



## Dependencies

**_RDF tools:_**

In dit project wordt een jena cli-tool gebruikt: riot.
- Lees eerst [deze documentatie](https://jena.apache.org/documentation/tools/index.html).
- Installeer de jena [binaries](https://dlcdn.apache.org/jena/binaries/).

```
curl -O https://dlcdn.apache.org/jena/binaries/apache-jena-4.6.0.tar.gz
tar -xf apache-jena-4.6.0.tar.gz -C /opt
echo 'export PATH="/opt/apache-jena-4.6.0/bin:$PATH"' >> ~/.bashrc
. ~/.bashrc
```

### Release
Release het overeenkomstige codelijsten project in Bamboo. Zie https://www.milieuinfo.be/bamboo/browse/CODELIJST


