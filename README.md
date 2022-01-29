# play-example

This repository contains an example of a deployable scala application using the play framework

## usage (local)

In order to use this project, you'll need to set the `APPLICATION_SECRET` environment variable. This is best done (locally) via the supplied `.env.example` file.

1. Copy `.env.example` to `.env` and fill in your application secret after the APPLICATION_SECRET=
2. Run 'docker compose up -d' to build and run the project
3. Access the application on [0.0.0.0:9000](localhost:9000)

## usage (build pipeline)

Make sure to set the `APPLICATION_SECRET` environment variable in your applicable build system. The dockerfile can then be built normally, and the resulting image, deployed to a container repo, will have the value embedded.
