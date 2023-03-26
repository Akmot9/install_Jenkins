curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/jenkins.gpg
# This command downloads the Jenkins repository key using the curl command and pipes the output to the gpg command 
# to convert it to a format that can be used by the apt-key command. The converted key is then saved to the /etc/apt/trusted.gpg.d/jenkins.gpg file,
# which is used by apt to verify the authenticity of packages downloaded from the Jenkins repository.

sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
# This command adds the Jenkins repository to your system's apt sources list by creating a new file called /etc/apt/sources.list.d/jenkins.list and 
# writing the repository URL (https://pkg.jenkins.io/debian-stable binary/) to it.

sudo apt update
# This command updates the package index on your system to include the packages available from the Jenkins repository that you just added.

sudo apt install jenkins
# This command installs the Jenkins package on your system using apt.

sudo systemctl start jenkins
# This command starts the Jenkins service on your system.

sudo systemctl enable jenkins
# This command configures the Jenkins service to start automatically at system boot.