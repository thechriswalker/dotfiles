## generate and SSH keypair
NAME="$(hostname)"
SSHKEY="${HOME}/.ssh/id_ed25519"
PUBKEY="${SSHKEY}.pub"
if [ ! -f "${SSHKEY}" ]
then
    e_arrow "Generating SSH Keypair..."
    ssh-keygen -t ed25519 -a 100 -C "@${NAME}" -f "${SSHKEY}"
    if [ $? -eq 0 ]
    then
        e_success "Generated a new SSH Keypair"
    else
        e_error "Failed to generate a new SSH Keypair"
else
    e_success "SSH Keypair found at ${PUBKEY}"
fi
