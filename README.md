chocolatey-winbareos
====================

[Chocolatey](http://chocolatey.org) package for [Bareos](http://www.bareos.org) Windows File daemon.

This will silently install Bareos (a client/server backup solution) File daemon on Windows operating systems via [Chocolatey](http://chocolatey.org) Machine Package Manager.

Usage examples
--------------

:exclamation: [Chocolatey](http://chocolatey.org) is required to use the chocolatey-winbareos Chocolatey package, see [installation instructions](https://github.com/chocolatey/chocolatey/wiki/Installation).

:grey_exclamation: Cloning of this repository is not required to use it: packages are stored on Chocolatey server

* Run File daemon installer with defaults settings:
    ```Batchfile
    choco install winbareos
    ```

* Run File daemon installer with custom settings by providing the installer some command line switches (via Chocolatey `-installArgs` option):

    * Set the name of the Bareos Director (server) to use and the password it should use to access this File daemon (otherwise installer generates a random password):
        ```Batchfile
        choco install winbareos -installArgs '/DIRECTORNAME=mycompany-bareos-dir /CLIENTPASSWORD=SecretPassword'
        ```

    * PowerShell version that uses machine's domain (Windows AD) to set the Director name and address accordingly, also sets the network address of the client:
        ```PowerShell
        choco install winbareos -installArgs '/DIRECTORNAME=' + $env:userdnsdomain + '-bareos-dir /DIRECTORADDRESS=bareos.' + $env:userdnsdomain + ' /CLIENTADDRESS=' + $env:ComputerName.ToLower() + '.' + $env:userdnsdomain
        ```

    The list of available command line switches can be found on the Bareos manual (section [*26.1.2 Command Line (Silent) Installation*](http://doc.bareos.org/master/html/bareos-manual-main-reference.html#x1-25100026.1.2)).
    The additional `/CLIENTCOMPATIBLE` switch exists to enable [Bacula](http://bacula.org)-compatible mode (`/CLIENTCOMPATIBLE=1`) or to disable it  (`/CLIENTCOMPATIBLE=0`).
