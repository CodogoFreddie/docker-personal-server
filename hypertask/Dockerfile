FROM node

RUN npm install -g @hypercortex/hypertask-cli@0.1.5
RUN task
RUN task hyper set:8543788670cbcca7482760efa6da72c9a3bf85a4cfdbaeccb117608f12d715e6
RUN task hyper

EXPOSE 15423

CMD task share
