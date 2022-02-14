FROM pytorch/pytorch:1.8.0-cuda11.1-cudnn8-devel

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


RUN apt-get update -y  && apt-get upgrade -y  && apt-get install wget curl git -y


RUN apt-get update && apt-get install -y \
	python3-opencv ca-certificates python3.8-dev git wget sudo python3.8-distutils python3-pip cmake git wget sudo ninja-build && \
  rm -rf /var/lib/apt/lists/*

#python install
RUN python3.8 -m pip install --upgrade pip
RUN python3.8 -m pip install numpy
RUN ln -sv /usr/bin/python3.8 /usr/bin/python && \
    python -V

RUN pip --no-cache-dir install \
    absl-py==0.10.0 \
    backcall==0.1.0 \
    cachetools==4.0.0 \
    chardet==3.0.4 \
    cloudpickle \
    cycler==0.10.0 \
    cython \
    dataclasses \
    decorator==4.4.2 \
    future==0.18.2 \
    fvcore==0.1.dev200325 \
    grpcio==1.27.2 \
    idna==2.9 \
    ipykernel==5.2.0 \
    ipython==7.13.0 \
    ipython-genutils==0.2.0 \
    jedi==0.16.0 \
    jupyter-client==6.1.1 \
    jupyter-core==4.6.3 \
    kiwisolver==1.1.0 \
    markdown==3.2.1 \
    matplotlib \
    numpy==1.18.2 \
    oauthlib==3.1.0 \
    opencv-python \
    pandas==1.0.3 \
    parso==0.6.2 \
    pexpect==4.8.0 \
    pickleshare==0.7.5 \
    pillow==7.0.0 \
    portalocker==1.6.0 \
    prompt-toolkit==3.0.4 \
    protobuf==3.11.3 \
    psutil==5.7.0 \
    ptyprocess==0.6.0 \
    pyasn1==0.4.8 \
    pyasn1-modules==0.2.8 \
    pydot==1.4.1 \
    pygments==2.6.1 \
    pyparsing==2.4.6 \
    pytz==2019.3 \
    pyyaml \
    pyzmq==19.0.0 \
    requests==2.23.0 \
    requests-oauthlib==1.3.0 \
    rsa==4.0 \
    scipy==1.4.1 \
    seaborn==0.10.1 \
    six==1.14.0 \
    tabulate \
    tensorboard \
    tensorboard-plugin-wit==1.6.0.post2 \
    termcolor==1.1.0 \
    tornado==6.0.4 \
    tqdm==4.43.0 \
    traitlets==4.3.3 \
    urllib3==1.25.8 \
    wcwidth==0.1.9 \
    werkzeug==1.0.0 \
    yacs==0.1.6 \
    networkx==2.3 \
    python-Levenshtein \
    Polygon3 \
    shapely \
    graphviz

ADD data /data/
RUN git clone https://github.com/str-saito/Informer2020.git