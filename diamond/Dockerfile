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
RUN wget -O /chroot/opt/diamond.conf https://gist.githubusercontent.com/nacyot/d0f9c491f8aa8ff42f16/raw/
RUN bash -c "cp -r /{lib,lib64,bin,usr,etc,var} /chroot/"

CMD chroot /chroot /usr/bin/diamond -f -c /opt/diamond.conf --skip-pidfile --skip-change-user -l
