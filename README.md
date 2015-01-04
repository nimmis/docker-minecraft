This docker image provides a Minecraft Server that will automatically download the latest stable
version at startup. You can also run/upgrade to any specific version or the
latest snapshot. See the *Versions* section below for more information.

To simply use the latest stable version, run

    docker run -d -p 25565:25565 nimmis/minecraft

where the default server port, 25565, will be exposed on your host machine. If you want to serve up multiple
Minecraft servers or just use an alternate port, change the host-side port mapping such as

    docker run -p 25566:25565 ...

will serve your Minecraft server on your host's port 25566 since the `-p` syntax is
`host-port`:`container-port`.

Speaking of multiple servers, it's handy to give your containers explicit names using `--name`, such as

    docker run -d -p 25565:25565 --name minecraft nimmis/minecraft

## EULA Support

Mojang now requires accepting the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula). To accept add

        -e EULA=true

such as

        docker run -e EULA=true -d -p 25565:25565 nimmis/minecraft
