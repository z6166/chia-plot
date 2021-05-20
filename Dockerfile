FROM ghcr.io/chia-network/chia:latest
RUN cd /chia-blockchain/
RUN . ./activate
RUN /chia-blockchain/venv/bin/chia init
RUN git clone https://github.com/swar/Swar-Chia-Plot-Manager.git plot-manager
RUN venv/bin/pip install -r plot-manager/requirements.txt
RUN cp plot-manager/config.yaml.default plot-manager/config.yaml
