
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
alias j8='remove_java_path;export JAVA_HOME=`/usr/libexec/java_home -v 1.8`;export PATH=${PATH}:${JAVA_HOME}/bin;java -version'
alias j11='remove_java_path;export JAVA_HOME=`/usr/libexec/java_home -v 11`;export PATH=${PATH}:${JAVA_HOME}/bin;java -version'
alias j15='remove_java_path;export JAVA_HOME=`/usr/libexec/java_home -v 15`;export PATH=${PATH}:${JAVA_HOME}/bin;java -version'
