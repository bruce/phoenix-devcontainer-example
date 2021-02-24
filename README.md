# Phoenix Devcontainer Example

This is just a simplified example of how to configure a [VSCode Development Container](https://code.visualstudio.com/docs/remote/containers) for use with Elixir and Phoenix. It's not very comprehensive (see "Limitations" below), but it might serve as a decent place to start your own configuration.

:wave: Pull requests making this configuration more comprehensive and flexible are very welcome!

## Running the Example Application

For the most part this is a stock, base Phoenix application. The only additions to the application are:
- The `script/bootstrap` and `script/start` scripts, useful for getting the app running once you're in the container.
- The `config/dev.exs` configuration pointing Ecto at the PostgreSQL instance (using the `db` hostname available courtesy
  of the `.devcontainer/docker-compose.yml` configuration).

Using the VSCode, when editing your working copy of this repository, use the Command Palette to run `Remote-Containers: Reopen in Container`.

Install the Elixir and JS dependencies:

```shell
$ ./script/bootstrap
```

Start the server:

```shell
$ ./script/start
```

(Both of these scripts are very simple and are included merely as a convenience. You may prefer to run the commands they contain yourself.)

You will likely be prompted that the server is available by VSCode—you should be able to connect to it at http://localhost:4001.

## Reusing It

Copy the `.devcontainer` directory to your own project. You'll likely want to modify it somewhat (see "Limitations," below).

## Limitations

- The PostgreSQL server started does _not_ have a volume mounted for persistence. You'll want to modify the `.devcontainer/docker-compose.yml` file accordingly (using [`volumes`](https://docs.docker.com/compose/compose-file/compose-file-v3/#volumes) to mount a directory at `/var/lib/postgresql/data`, most likely).
- The `.devcontainer/Dockerfile` currently uses the latest official image (`elixir:latest`) and installs v15.x of NodeJS (for asset installation). This could be modified to be more flexible.
- The configuration doesn't currently install any useful VSCode extensions for you (such as ElixirLS).

## Contributing

Pull requests very welcome. Please take care to make any changes general purpose and not tied
to your specific application's configuration or version preferences.

## License

MIT; see separate licensing details in `.devcontainer/library-scripts` boilerplate scripts.
