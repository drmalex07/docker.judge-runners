#!/bin/bash

set -e

program=${PROGRAM_NAME}

g++ ${CPP_FLAGS} ${CPP_WARN_FLAGS} ${PROGRAM_FILE} -o ${program}
r=$?

if [ "${r}" -eq 0 ]; then
    # The program compiled
    program=$(realpath ${program})
    # Run inside working directory
    test -d ${WORKING_DIR} && cd ${WORKING_DIR}
    if [ -f "${INPUT_FILE}" ]; then
        exec ${program} < ${INPUT_FILE} 1> ${PROGRAM_NAME}.out 2> ${PROGRAM_NAME}.err
    else
        exec ${program} 1> ${PROGRAM_NAME}.out 2> ${PROGRAM_NAME}.err
    fi
else
    # The program failed to compile
    exit $r
fi
