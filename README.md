# About This Repo
Welcome to my **InfoSec Lab** for level-up my [InfoSec] skills. This repo is for tracking my [homelab] configs and scripts for a quick spin in case of fire or something goes wrong :smile:

The lab focuses on the following:

- Attacking and Defending Windows Active Directory.
- Container/Cloud Security.
- DevOps/DevSecOp Toolings.
- Malware Analysis.
- Threat Hunting.

# Overview
![topology](https://github.com/mohabaks/InfoSecLab/blob/Main/InfoSecLab.png)

#### Devices
|Device|Specs|OS|Objective|
|------|-----|---|----------|
|Gooxi Server|Memory: 128G<br>CPU(s): 40<br>Model: Intel(R) Xeon(R) CPU E5-2630 v4 @ 2.20GHz<br>Storage: 3T|FreeBSD 13.1|<ul><li>Running [bhyve] hypervisor for hosting Virtual Machines</li><li>[pfSense]: Managed all the Networks for the VMs and [WireGuard] for VPN tunnel</li><li>Running boot-to-root VMs, Windows Active Directory Lab, Malware Analysis Lab, Threat Hunting and Network Monitoring</li></ul>|
|Samsung Notebook|Memory: 8G<br>CPU(s): 2<br>Model: Intel(R) Celeron(R) CPU B815 @ 1.60GHz<br>Stroge: 1T|Alpine Linux v3.16|<ul><li>[pfSense]: Managed local VMs, Containers Network and Connection to remote [WireGuard] tunnel</li><li>[LXD] and [Docker]: for testing various projects and personal self-hosted applications e.g [gitea], [pi-hole]</li><li>[Whonix-Gateway]: for running Tor</li><li>[KVM] for VMs virtualization</li></ul>|
|Raspberry Pi B+|Memory: 1G<br>CPU(s): 4<br>Model: Cortex-A53<br>Storage: 500G|Alpine Linux v3.16|<ul><li>Testing [kubernetes] with [k3s]</li><li>WiFi pentesting</li><li>Other disposable lightweight projects</li></ul>|
|Lenovo Yoga 260 (Attacker)|Memory: 16G<br>CPU(s): 4<br>Model: Intel(R) Core(TM) i7-6500U CPU @ 2.50GHz<br>Storage: 256G|Void Linux|<ul><li>Daily drive for personal use</li><li>Running [blackarch] lxd container and [Commando VM] for pentesting using [KVM]</li></ul>|

#### Network
|Location|Network(s)|VLAN(s)|Description|
|---------|-------|------|-----------|
|Remote|172.20.201.0/24<br>10.254.130.0/24<br>192.168.140.0/24|201<br>-<br>-|Management Network (MAN)<br>Vulnerable Network (PWN)<br>Malware Analysis Network (MLN)<br>|
|Home|192.168.100.0/24<br>172.30.40.0/24<br>10.0.2.0/24|-<br>-<br>-|Management Network (MAN)<br>Containers Network (CON)<br>Whonix-Gateway External Network|
|-|10.0.8.0/29|-|WireGuard Tunnel|

The Network(s) are managed by [pfSense].

# TODO

|Task(s)|Current Status|
|----|-----|
|Infrastructure as Code (IaC)|<ul><li>[x] [Ansible]</li><li>[ ] [Terraform]</li><li>[ ] [GitOps]</li><li>[ ] [Puppet]</li><li>[ ] [Vagrant]</li></ul>|
|CI/CD|<ul><li>[ ] [Jenkins]</li><li>[ ] [GitLab]</li></ul>|
|Kubernetes|<ul><li>[ ] [k3s]</li><li>[ ] [Rancher]</li></ul>|
|Self-Hosted|<ul><li>[x] [gitea]</li><li>[X] [pi-hole]</li></ul>|
|Attack/Defend|<ul><li>[ ] Windows Active Directory</li><li>[ ] Malware Analysis</li><li>[ ] Threat Hunting/Monitoring</li><li>[ ] Honeypots</li></ul>

[homelab]: https://www.reddit.com/r/homelab/
[InfoSec]: https://en.wikipedia.org/wiki/Information_security
[bhyve]: https://wiki.freebsd.org/bhyve
[KVM]: https://www.linux-kvm.org/page/Main_Page
[k3s]: https://k3s.io/
[kubernetes]: https://kubernetes.io/
[pfSense]: https://www.pfsense.org/
[blackarch]: https://blackarch.org/
[Commando VM]: https://github.com/mandiant/commando-vm
[gitea]: https://gitea.io/en-us/
[LXD]: https://linuxcontainers.org/lxd/introduction/
[Docker]: https://www.docker.com/
[WireGuard]: https://www.wireguard.com/
[pi-hole]: https://pi-hole.net/
[Whonix-Gateway]: https://www.whonix.org/wiki/Whonix-Gateway
[Ansible]: https://www.ansible.com/
[Puppet]: https://puppet.com/
[GitOps]: https://www.gitops.tech/
[Terraform]: https://www.terraform.io/
[Vagrant]: https://www.vagrantup.com/intro
[Jenkins]: https://www.jenkins.io/
[GitLab]: https://docs.gitlab.com/ee/ci/
[Rancher]: https://rancher.com/
