FROM gcc:4.9

ENV CPP_FLAGS="--std=c++11"
ENV CPP_WARN_FLAGS="-Wall -Wextra -Weffc++"

ENV PROGRAM_FILE "/usr/local/src/main.cpp"
ENV PROGRAM_NAME "main"

ENV INPUT_FILE ""
ENV OUTPUT_FILE ""
ENV WORKING_DIR ""

VOLUME /usr/local/src/

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["./entrypoint.sh"]
