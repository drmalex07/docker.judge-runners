#!/bin/bash -x

set -e

test ! -d "${WORKING_DIR}" && WORKING_DIR=/root

main_class=$(basename ${PROGRAM_FILE})
main_class=${main_class%.java}

javac -d "${WORKING_DIR}" ${PROGRAM_FILE}
r=$?

if [ "${r}" -eq 0 ]; then
    # The main-class compiled; run inside working directory
    cd ${WORKING_DIR}
    if [ -f "${INPUT_FILE}" ]; then
        exec java ${JAVA_XX_OPTS} ${JAVA_MEM_OPTS} ${main_class} < ${INPUT_FILE} > "${main_class}.out"
    else
        exec java ${JAVA_XX_OPTS} ${JAVA_MEM_OPTS} ${main_class} > "${main_class}.out"
    fi
else
    # The main-class failed to compile
    exit $r
fi
