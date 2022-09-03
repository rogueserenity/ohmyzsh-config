
function remove_java_path() {
  set -o shwordsplit
  LOOP_PATH=`echo ${PATH} | tr ":" " "`
  TMP_PATH=""
  for ENTRY in $LOOP_PATH
  do
    if [[ $ENTRY != /Library/Java/* ]]
    then
      TMP_PATH=${TMP_PATH}:${ENTRY}
    fi
  done
  export PATH=`echo ${TMP_PATH} | sed s/^://`
}

#JAVA VERSION ALIASES
alias j8='remove_java_path;export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_202.jdk/Contents/Home;export PATH=${JAVA_HOME}/bin:${PATH};java -version'
alias j11='remove_java_path;export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home;export PATH=${JAVA_HOME}/bin:${PATH};java -version'
alias j17='remove_java_path;export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home;export PATH=${JAVA_HOME}/bin:${PATH};java -version'
alias j18='remove_java_path;export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-18.jdk/Contents/Home;export PATH=${JAVA_HOME}/bin:${PATH};java -version'

#ADD DEFAULT JAVA TO PATH
export PATH=${JAVA_HOME}/bin:${PATH}
