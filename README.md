# How to Install Jenkins

To install Jenkins on an Ubuntu system, follow these steps:

1. Clone the repository to your local machine: 
```bash
git clone https://github.com/akmot9/install_jenkins.git
```
2. Change to the repository directory:
```bash
cd install_jenkins
```
3. Run the installation script:
```bash
bash install_jenkins.sh
#The script will download and install Jenkins on your system, and start the Jenkins service. 
```


4. To access the Jenkins web interface, open your web browser and navigate to `http://your_server_ip_or_domain:8080`. If you are accessing Jenkins from the same machine where it is installed, you can use `http://localhost:8080`.

5. To complete the Jenkins installation, you will need to retrieve the initial administrator password from the `secrets/initialAdminPassword` file. You can do this by running the following command:
```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
Copy the password and paste it into the Jenkins web interface to complete the setup process.

That's it! You should now have Jenkins up and running on your Ubuntu system.

If you have any questions or encounter any issues, please refer to the Jenkins documentation or seek help from the Jenkins community.

I hope this helps.

