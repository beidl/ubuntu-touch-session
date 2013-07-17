# Join the phablet Upstart session
uid=$(getent passwd "$USER"|cut -d: -f3)
export XDG_RUNTIME_DIR="/run/user/$uid"

export UPSTART_SESSION=$(/sbin/initctl list-sessions | awk '{ print $NF; quit }')
