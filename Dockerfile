FROM ubuntu

RUN apt update && apt install python3 git python3-pip libpng-dev pkg-config libfreetype-dev -y
RUN git clone https://github.com/jamesnetherton/cotw-population-mod.git && cd cotw-population-mod/ && pip3 install -r requirements.txt

ENTRYPOINT ["python3", "cotw-population-mod/modify_population.py"]
