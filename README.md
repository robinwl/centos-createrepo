# Createrepo

Sometimes you'll find you need to be able to collect a bunch of rpm packages you have together in one place and you want to make them available to your systems running yum. It is pretty easy to do.

> [yum.baseurl.org/wiki/RepoCreate](http://yum.baseurl.org/wiki/RepoCreate)

This project defines the rpm-metadata (repodata) format and maintains one of the programs (createrepo) which create this format from existing rpms and other sources.

> [createrepo.baseurl.org](http://createrepo.baseurl.org/)

# How to use this image

## run createrepo
	docker run -v /srv/repo:/data sark/createrepo:latest
	
## run createrepo with verobe outout
	docker run -e verbose=true -v /srv/repo:/data sark/createrepo:latest
	
License
----
MIT
