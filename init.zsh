# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::p6jenkins::deps()
#
#>
######################################################################
p6df::modules::p6jenkins::deps() {
    ModuleDeps=(
        p6m7g8-dotfiles/p6common
    )
}

######################################################################
#<
#
# Function: str str = p6_jenkins_prompt_info()
#
#  Returns:
#	str - str
#
#  Environment:	 JENKINS_URL
#>
######################################################################
p6_jenkins_prompt_info() {

    local str

    if p6_file_exists "Jenkinsfile"; then
        str="jenkins:  $JENKINS_URL ($JENKINS_USER_ID)"
    fi
    p6_return_str "$str"
}

######################################################################
#<
#
# Function: p6_jenkins_cli_wrapper()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6_jenkins_cli_wrapper() {

    java -jar $P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-jenkins/libexec/jenkins-cli.jar -webSocket "$@"
}

######################################################################
#<
#
# Function: p6_jenkins_jobs_list()
#
#>
######################################################################
p6_jenkins_jobs_list() {

    p6_jenkins_cli_wrapper list-jobs "$@"
}

######################################################################
#<
#
# Function: p6_jenkins_job_get(job_name, ...)
#
#  Args:
#	job_name -
#	... - 
#
#>
######################################################################
p6_jenkins_job_get() {
    local job_name="$1"
    shift 1

    p6_jenkins_cli_wrapper get-job $job_name "$@"
}

######################################################################
#<
#
# Function: p6_jenkins_job_build(job_name, ...)
#
#  Args:
#	job_name -
#	... - 
#
#>
######################################################################
p6_jenkins_job_build() {
    local job_name="$1"
    shift 1

    p6_jenkins_cli_wrapper build $job_name "$@"
}

######################################################################
#<
#
# Function: p6_jenkins_job_tail(job_name, ...)
#
#  Args:
#	job_name -
#	... - 
#
#>
######################################################################
p6_jenkins_job_tail() {
    local job_name="$1"
    shift 1

    p6_jenkins_cli_wrapper console $job_name "$@"
}
