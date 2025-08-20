# Architecture in the same VM

```
[Internet HTTPS]
      ↓
[Nginx proxy on :443]
      ↓ (localhost:8080)
[Internal Nginx serving .mp4 files]
On Ubuntu 24_04 + S3 bucket for unlimited storage.
```

## Installation and configuration of s3fs

```bash
sudo apt update -y
sudo apt install s3fs -y
```

Configure access to **S3** (for the videos):

```bash
echo "<Access_Key>:<Secret_Key>" | sudo tee /etc/passwd-s3fs
sudo chmod 600 /etc/passwd-s3fs
sudo mkdir /mnt/s3-wiki
```

Inside **fstab** (to remount partitions after reboot/services restart):

```bash
vim /etc/fstab
```

Add the following line:

```fstab
s3fs#wiki-videos-bucket  /mnt/s3-wiki  fuse  _netdev,allow_other,use_path_request_style,url=https://s3-vlc.oasixcloud.es  0  0
```

Mount:

```bash
sudo mount -a
```

> **NOTE**: Try to list files inside de s3 mounted directory, making sure it`s working.
> Example: # tree /mnt/s3-wiki/Formacion

---

## Second volume “vdb” attached to the instance from Soax

```bash
dh -l  ## it will probably appear as vdb
sudo fdisk /dev/vdb # Manage partitions of the /dev/vdb disk
sudo blkid /dev/vdb1                  # Show UUID and partition type of /dev/vdb1
sudo mkfs.ext4 /dev/vdb1              # Format the partition with ext4 filesystem
sudo mkdir -p /var/log/nginx-logs     # Create directory to mount the partition
sudo mount /dev/vdb1 /var/log/nginx-logs  # Mount the partition in the created directory
```

Inside **fstab** add:

```fstab
/dev/vdb1 /var/log/nginx-logs ext4 defaults 0 2
```
