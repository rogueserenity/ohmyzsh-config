export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
for APP_PATH in /opt/*/bin
do
	export PATH=${APP_PATH}:${PATH}
done

export MANPATH=/usr/share/man:/usr/local/share/man:/usr/local/man
for APP_PATH in /opt/*/man
do
	export MANPATH=${APP_PATH}:${MANPATH}
done
