# L1

Instaluję sambę zgodnie z [tutorialem](https://tutorials.ubuntu.com/tutorial/install-and-configure-samba#2)

## Net view na Wacie by zobaczyć smb

PS H:\> net view s6
Shared resources at s6

**Przed**
PS H:\> net use
New connections will not be remembered.


Status       Local     Remote                    Network

-------------------------------------------------------------------------------
OK           H:        \\stud\dabrowk1           Microsoft Windows Network
The command completed successfully.

==========================

s6 server (Samba, Ubuntu)

Share name  Type   Used as  Comment

-------------------------------------------------------------------------------
sambashare  Disk            Samba na Ubuntu S6
SK102       Print           HP LaserJet M402dn
The command completed successfully.


PS H:\> net use :Z \\s6\smbashare

I potem **screen**

Po zamontowaniu:

PS H:\> net use Z: \\s6\sambashare
The command completed successfully.

PS H:\> net use
New connections will not be remembered.


Status       Local     Remote                    Network

-------------------------------------------------------------------------------
OK           H:        \\stud\dabrowk1           Microsoft Windows Network
OK           Z:        \\s6\sambashare           Microsoft Windows Network
The command completed successfully.


Odmontowanie udziału


PS H:\> net use Z: /delete
Z: was deleted successfully.

PS H:\> net use
New connections will not be remembered.


Status       Local     Remote                    Network

-------------------------------------------------------------------------------
OK           H:        \\stud\dabrowk1           Microsoft Windows Network
The command completed successfully.

## NFS na Windowsie

### Oglądanie zasobów
PS H:\> showmount -e volt
Exports list on volt:
/tmp/obj                           All Machines
/home/stud                         ldap, fed.iem.pw.edu.pl, amp,
                                   fre.iem.pw.edu.pl, ubu.iem.pw.edu.pl,
                                   len.iem.pw.edu.pl, vxjac.iem.pw.edu.pl
/                                  All Machines
/nfs                               lap

### Montowanie
H:\>mount \\volt\ I:
I: is now successfully connected to \\volt\

The command completed successfully.

Pokazanie, że jest

H:\>mount

Local    Remote
----------------
I:       \\volt\

Odmontowanie

H:\>umount I:

Disconnecting           I:      \\volt\
The command completed successfully.


## NFS na Ubuntu
Wypisanie dostępnych zasobów