#!/usr/bin/env bash
#set -Eeuo pipefail
echo "Choosing container start method from:"
echo "$@"


case $1 in
	gsad)
	echo "Starting Greenbone Security Assitannt !!"
	exec /scripts/gsad.sh
;;
	gvmd)
	echo "Starting Greenbone Vulnerability Manager daemon !!"
	exec /scripts/gvmd.sh
;;
	openvas)
	echo "Starting ospd-openvas !!"
	exec /scripts/openvas.sh
;;
	postgresql)
	echo "Starting postgresql for gvmd !!"
	exec /scripts/postgresql.sh
;;
	*)
	echo "Starting gvmd & openvas in a single container !!"
	exec /scripts/single.sh $@
;;

esac
