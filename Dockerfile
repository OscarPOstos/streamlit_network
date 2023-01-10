FROM python:3.8
WORKDIR /app
RUN pip install streamlit

COPY src/app.py /app/
COPY src/neuronal_network.py /app/
COPY src/components.py /app/
COPY logo.jpg /app/
ENTRYPOINT ["streamlit", "run", "app.py"]
