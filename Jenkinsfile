pipeline {
    agent {
        label 'master'
    }   
    stages {
        stage('Execute') {
            steps {
                dir("Python_Page_Object"){
                    sh 'pip install -r requirements.txt'
                    sh 'behave features -D BROWSER=chrome -D HEADLESS=True --no-capture --junit'
		    sh 'python -m behave2cucumber -i results.json -o cucumber_reports.json'
                }
            }
        }
    }
    post {
    always {
        dir("Python_Page_Object"){		
            junit 'reports/*.xml'
	    cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: 'cucumber_reports.json', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }
      } // always
   } // post
}
