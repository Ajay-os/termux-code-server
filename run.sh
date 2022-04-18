apt-get update && \
apt-get -yq upgrade && \
apt-get install -yq sudo lsb-release software-properties-common && 
adduser --disabled-password --shell /bin/bash --gecos "" builder && \
echo "builder ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/builder && \
chmod 0440 /etc/sudoers.d/builder && \
	  su - builder -c /tmp/setup-ubuntu.sh && \
 	  su - builder -c /tmp/setup-android-sdk.sh && \
# Removed unused parts to make a smaller Docker image:
	  apt-get remove -yq --autoremove lsb-release software-properties-common && \
	  apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    cd /home/builder/lib/android-ndk/ && \
 	  rm -Rf sources/cxx-stl/system && \
    cd /home/builder/lib/android-sdk/tools && \
  	rm -Rf emulator* lib* proguard templates

 # Switch User
builder:builder
# We expect this to be mounted with '-v $PWD:/home/builder/termux-packages':
