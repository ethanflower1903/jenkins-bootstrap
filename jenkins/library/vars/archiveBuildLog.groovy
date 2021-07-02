#!/usr/bin/env groovy

def call(String logName = 'build.log') {
    def logContent = Jenkins.get()
            .getItemByFullName(env.JOB_NAME)
            .getBuildByNumber(
                    Integer.parseInt(env.BUILD_NUMBER))
            .logFile.text
    // copy the log in the job's own workspace
    writeFile file: name, text: logName
    archiveArtifacts artifacts: logName, allowEmptyArchive: true, fingerprint: false, onlyIfSuccessful: false
}
