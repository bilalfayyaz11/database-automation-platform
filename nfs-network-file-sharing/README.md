# NFS Network File Sharing

## Overview

This project demonstrates enterprise Network File System (NFS) administration on CentOS Stream 9.

The implementation covers NFS server deployment, export configuration, client-side mounting, RPC service validation, permission management, and firewall integration.

## Architecture

Server Components:

- rpcbind
- nfs-server
- exportfs
- NFS exports

Client Components:

- NFS mounts
- showmount
- rpcinfo
- Persistent mount validation

## NFS Shares

### Shared Directory

Read-write export:

/nfs/shared

Options:

- rw
- sync
- no_root_squash
- no_subtree_check

### Public Directory

Read-only export:

/nfs/public

Options:

- ro
- sync
- root_squash
- no_subtree_check

### Private Directory

Restricted export:

/nfs/private

Options:

- rw
- sync
- root_squash
- no_subtree_check

## Technologies

- CentOS Stream 9
- NFS
- RPCBind
- Firewalld
- Systemd
- Linux Storage Services

## Skills Demonstrated

- NFS Server Administration
- NFS Client Administration
- Network File Sharing
- Linux Storage Management
- Firewall Configuration
- RPC Service Validation
- Linux Service Management
- Infrastructure Troubleshooting

## Validation Performed

- NFS exports verified
- RPC services validated
- Client mounts tested
- Read-only access confirmed
- Restricted access validated
- Network file operations tested

## Security Concepts

- root_squash
- Export restrictions
- Permission enforcement
- RPC service control
- Firewall-based access control

## Commands Used

Server:

exportfs -v
showmount -e localhost
rpcinfo -p localhost

Client:

mount -t nfs
df -h
mount | grep nfs

Firewall:

firewall-cmd --add-service=nfs
firewall-cmd --add-service=rpc-bind
firewall-cmd --add-service=mountd

## Real World Use Cases

- Centralized file storage
- Shared application data
- Enterprise Linux environments
- Development environments
- Infrastructure platforms
- RHCSA/RHCE administration workflows
