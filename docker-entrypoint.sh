#!/bin/bash
set -e

if [ "${1:0:1}" = '-' ]; then
	set -- createrepo "$@"
fi

if [ "$1" = 'createrepo' ]; then
	if [ -n "$verbose" ] ; then
		set -- "$@" --verbose
	fi

	if [ -n "$update" ] ; then
		set -- "$@" --update
	fi

	if [ -n "$database" ] ; then
		set -- "$@" --database
	fi

	if [ -n "$deltas" ] ; then
		set -- "$@" --deltas
	fi

	if [ -n "$groupfile" ] ; then
		set -- "$@" --groupfile="$groupfile"
	fi

	set -- "$@" /data
fi

exec "$@"
