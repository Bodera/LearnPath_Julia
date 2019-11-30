# Step 1
Access [this site](https://juliacomputing.com/products/juliapro) and choose between the LTS or Stable release of JuliaPro. 

# Step 2
Download the software. On Linux enviroments you will need to set proper permissions to the `.sh` file, so:

```bash
$ chmod 777 JuliaPro-whatever-version.sh
```

# Step 3 (for Debian based distros)
Install some dependencies before move on:
```bash
$ sudo apt-get -y install xclip
$ sudo apt-get -y install libgconf-2-4
```

# Step 4
The `JuliaPro-whatever-version.sh` script takes one argument; The absolute path to the directory into which you wish to install JuliaPro.

Example:
```bash
$ ./JuliaPro-whatever-version.sh /home/user/julia/
```

You can proceed to installation process by answering __No__ to the question prompt.

The entire installation takes some time.

# Step 5
You are able to execute JuliaPro by navigating to the installation directory.

First:
```bash
$ cd /home/user/julia/JuliaPro-whatever-version
```

Finally:
```bash
$ ./Launch_JuliaPro
```

# Step 6
Click on that bottom left REPL pane and do as it says: hit enter (or return) to start Julia.

You'll see a green `julia>` prompt pop up where you can start executing Julia code. To initiate a connection with the package manager type a `]` at the prompt. This will "change modes" into the package management mode:

Run `update` to connect to the package manager. And authenticate.

# Step 7
Access [this site](https://nteract.io/) and download `nteract` for easily run notebooks.

```bash
$ chmod +x nteract-whatever-version.AppImage
$ ./nteract-whatever-version.AppImage
```
