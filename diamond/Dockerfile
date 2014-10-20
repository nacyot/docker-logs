FROM nacyot/ubuntu:14.04
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

# Install base packages
RUN apt-get update
RUN apt-get install -y python python-support python-configobj make pbuilder python-mock cdbs

# Install diamond
RUN git clone https://github.com/BrightcoveOS/Diamond.git /opt/Diamond
WORKDIR /opt/Diamond
RUN make builddeb 
RUN dpkg -i build/diamond_3.*.deb

# Initialize chroot
RUN bash -c "mkdir -p /chroot/{root,tmp,opt}"
RUN bash -c "cp -r /{lib,lib64,bin,usr,etc,var} /chroot/"
ADD diamond.conf /chroot/opt/diamond.conf

# Run command
ADD run.sh /opt/Diamond/run.sh
RUN chmod +x /opt/Diamond/run.sh

CMD /opt/Diamond/run.sh
