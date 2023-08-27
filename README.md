#L5:

##Bastion
###1 ProxyJump:
> ssh -J appuser@158.160.109.124 appuser@10.128.0.7


###2 ProxyJump by alias:
>ssh someinternalhost

~/.ssh/config
```
### The Bastion Host
Host bastion
HostName 158.160.109.124
User appuser

### The Remote Host
Host someinternalhost
HostName 10.128.0.7
User appuser
ProxyJump bastion
```


###3
```
bastion_IP = 158.160.109.124
someinternalhost_IP = 10.128.0.7
```

#L6:

```
testapp_IP = 158.160.96.142
testapp_port = 9292
```

#L10 Ansible 1:

> ansible app -m command -a 'rm -rf ~/reddit'

Удаляет /reddit, при повторном запуске ansible пересоздается
