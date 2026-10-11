#!/usr/bin/env cbsd
# Load Linuxulator kernel modules. No distribution base is fetched.

. ${subrdir}/nc.subr
cixinit
[ -z "${CIX_DISTDIR}" ] && CIX_DISTDIR="/usr/local/cbsd"
unset workdir

# MAIN
[ -z "${cbsd_workdir}" ] && . /etc/rc.conf
if [ -z "${cbsd_workdir}" ]; then
	echo "No workdir"
	exit 1
else
	workdir="${cbsd_workdir}"
fi
[ ! -r "${CIX_DISTDIR}/cbsd.conf" ] && exit 1

. ${CIX_DISTDIR}/cbsd.conf
. ${subrdir}/nc.subr
. ${system}
. ${strings}
. ${tools}

for module in linprocfs fdescfs tmpfs linsysfs; do
	kernel_mod -l ${module}
done

kernel_mod -l linux_common
kernel_mod -l linux64

exit 0
