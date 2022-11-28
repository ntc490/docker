echo Creating local user $user with uid=$uid and gid=$gid
groupadd -g ${uid} ${user}
useradd -u ${uid} -g ${gid} -G sudo -m ${user}
echo "%${user} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
