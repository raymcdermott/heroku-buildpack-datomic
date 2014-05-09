# Process the property files to ensure that the transactor listens on the port provided by Heroku

PROPERTIES=~/datomic/config/samples/free-transactor-template.properties

sed "s/^port=4334/port=$PORT/" ${PROPERTIES} > ${PROPERTIES}.tmp

mv ${PROPERTIES}.tmp ${PROPERTIES}

unset JAVA_OPTS

transactor ${PROPERTIES}


