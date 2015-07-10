# My devenv

* Generate an SSH keypair and add it to Github
    ```
    ssh-keygen -t rsa -b 4096 -C devenv
    ```
* Clone this repo into your home directory
* Clone the git-aware-prompt repo into a .bash directory in your home folder
    ```
    git clone https://github.com/jimeh/git-aware-prompt
    ```
* Install packages from packages.txt 

* If you're in a VMWare virtual machine, mount the code directory
    ```
    sudo mount --bind /mnt/hgfs/code/ code
    ```

## At the end of each day
* Go to the home directory
* Run the following to save installed packages to a file
    ```
    aptitude search -F '%p' '~i!~M' > packages.txt
    ```
* Check in packages.txt and any other dotfiles that changed
 
