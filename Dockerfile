FROM ghcr.io/chia-network/chia:latest
RUN cd /chia-blockchain/
RUN . ./activate
RUN git clone https://github.com/swar/Swar-Chia-Plot-Manager.git plot-manager
RUN venv/bin/pip install -r plot-manager/requirements.txt
#ADD chia-plotmanager-start.sh /bin/
#RUN chmod +x /bin/chia-plotmanager-start.sh
#ENTRYPOINT ["/bin/chia-plotmanager-start.sh"]
RUN cp plot-manager/config.yaml.default plot-manager/config.yaml
