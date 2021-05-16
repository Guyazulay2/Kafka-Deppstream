FROM nvcr.io/nvidia/deepstream-l4t:5.1-21.02-samples

WORKDIR /root

RUN apt-get update
RUN apt-get install build-essential -y

RUN git clone https://github.com/edenhill/librdkafka.git
RUN cd librdkafka && git reset --hard 7101c2310341ab3f4675fc565f64f0967e135a6a
CMD ./configure 
RUN cd librdkafka && make && make install

RUN sudo mkdir -p /opt/nvidia/deepstream/deepstream-5.1/lib
RUN sudo cp /usr/local/lib/librdkafka* /opt/nvidia/deepstream/deepstream-5.1
