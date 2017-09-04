FROM openjdk:8

ENV JAVA_XX_OPTS "-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"
ENV JAVA_MEM_OPTS "-Xmx256m -Xms64m"

ENV PROGRAM_FILE "/usr/local/src/Main.java"

ENV INPUT_FILE ""
ENV WORKING_DIR ""

VOLUME /usr/local/src/

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["./entrypoint.sh"]
