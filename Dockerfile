FROM opensciencegrid/osgvo-tensorflow-gpu

MAINTAINER Edgar Fajardo <emfajard@ucsd.edu>

RUN python3 -m pip install --upgrade pip


RUN pip3 --no-cache-dir install \
         astropy \
         && \
    python3 -m ipykernel.kernelspec

# build info
RUN echo "Timestamp:" `date --utc` | tee /image-build-info.txt
