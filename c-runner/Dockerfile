FROM gcc:4.9

ENV CC_FLAGS="--std=c99"
ENV CC_WARN_FLAGS="-Wall -Wextra"

ENV PROGRAM_FILE "/usr/local/src/main.c"
ENV PROGRAM_NAME "main"

ENV INPUT_FILE ""
ENV OUTPUT_FILE ""
ENV WORKING_DIR ""

VOLUME /usr/local/src/

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["./entrypoint.sh"]
