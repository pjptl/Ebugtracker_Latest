pipeline{
agent any
tools{
maven 'M3'
jdk 'JAVA_HOME'
}
stages {
stage('Checkout'){
steps{
git branch: 'master', url: 'https://github.com/pjptl/Ebugtracker_Latest.git'
}
}
stage('Build'){
steps{
bat 'mvn compile'
}
}
stage('Package'){
steps{
bat 'mvn package'
}
}
stage('Create Image')
{
steps{
bat 'docker build -t image1 .'
}
}
stage('Create Container')
{
steps{
bat 'docker container create -p 9090:8080 --name container1 image1'
}
}
stage('Start Container')
{
steps{
bat 'docker start container1'
}
}
}
}
