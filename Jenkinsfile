pipeline{
    agent any
    
      
    stages{
        stage ('Clean WorkSpace Directory'){
            steps {
                //define the single or multiple step
                sh 'echo CleanUp Stage'
                cleanWs notFailBuild: true
            }
        }
        stage ('Git CheckOut'){
            steps {
               //define the single or multiple step
                sh 'echo Git Checkout'
                checkout scmGit(branches: [[name: '**']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/HusniR/karate-demo.git']])
                //checkout([$class: 'GitSCM', branches: [[name: '**']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/rahulrathore44/KarateFrameworkTutorial.git']]])
            }
            
        }
        stage ('Restore Packages'){
            steps {
                //define the single or multiple step
                sh 'echo Restore Package'
            }
        }
        stage ('Build'){
            steps {
               //define the single or multiple step
                sh 'echo Build'
                sh '''M2_HOME=/opt/maven/bin
                PATH=$PATH:$HOME/.local/bin:$HOME/bin:$M2_HOME
                mvn -v
                mvn clean compile'''
                
                
            }
        }
        stage ('Deploy'){
            steps {
                sh 'echo Deploying the application..'
            }
        }
        stage ('Run the Test') {
            steps {
                 //define the single or multiple step
                sh 'echo Test Execution Started'
                sh '''M2_HOME=/opt/maven/bin
                PATH=$PATH:$HOME/.local/bin:$HOME/bin:$M2_HOME
                mvn test -DargLine="-Dkarate.env=jenkins" '''
            }
        }
    }
    post {
        always {
            junit 'target/surefire-reports/*.xml'
            cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'target/karate-reports', pendingStepsNumber: -1, reportTitle: 'Karate Test Execution', skipEmptyJSONFiles: true, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }
    }
}
