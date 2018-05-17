#!/bin/bash


EMB_PATH="./embeddings"
if [ ! -d $EMB_PATH ]; then
  mkdir -p $EMB_PATH
fi

cd embeddings
wget http://nlp.stanford.edu/data/glove.840B.300d.zip
unzip glove.840B.300d.zip
rm glove.840B.300d.zip
cd $OLDPWD

SRL_PATH="./data/srl"
if [ ! -d $SRL_PATH ]; then
  mkdir -p $SRL_PATH
fi

# Get srl-conll package.
wget -O "${SRL_PATH}/srlconll-1.1.tgz" http://www.lsi.upc.edu/~srlconll/srlconll-1.1.tgz
tar xf "${SRL_PATH}/srlconll-1.1.tgz" -C "${SRL_PATH}"
rm "${SRL_PATH}/srlconll-1.1.tgz"



