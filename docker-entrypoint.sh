#!/bin/bash
set -e

if [ "${1:0:1}" = '-' ]; then
	set -- createrepo "$@"
fi

if [ "$1" = 'createrepo' ]; then
	if [ -n "$verbose" ] ; then
		set -- "$@" --verbose
	fi

	set -- "$@" /data
fi

exec "$@"