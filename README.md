# Takeoff Engineering Handbook

Welcome to our [Takeoff Engineering Handbook site](https://literate-meme-e2241634.pages.github.io/) repository. This site is derived from [Docsy](https://github.com/google/docsy), a [Hugo-based theme](https://gohugo.io/) designed for technical documentation.

**Please note:** This site is hosted privately on Github pages for the Takeoff Engineering organization. For the time being, this means we are using an auto-generated url (https://literate-meme-e2241634.pages.github.io/). In the near future, we will be moving the site to Google Cloud and a more relevant URL will be used.   

## Contributing

We welcome contributions from anyone at Takeoff. Before contributing, we recommend reviewing the [Handbook Jira project](https://takeofftech.atlassian.net/secure/RapidBoard.jspa?rapidView=281&projectKey=EH&view=planning&selectedIssue=EH-34&issueLimit=100) backlog for similar requests. If a similar request exists, please add to it rather than creating a new one.

All content submissions are subject to a code-review workflow before they are published. If you would like to be part of the Handbook publishing review team, please submit a ticket on the [Handbook Jira project](https://takeofftech.atlassian.net/secure/RapidBoard.jspa?rapidView=281&projectKey=EH&view=planning&selectedIssue=EH-34&issueLimit=100).

### Requesting content

Submit requests for content in our [Handbook Jira project](https://takeofftech.atlassian.net/secure/RapidBoard.jspa?rapidView=281&projectKey=EH&view=planning&selectedIssue=EH-34&issueLimit=100).

## About the project theme

This Docsy Example Project is hosted at [https://example.docsy.dev/](https://example.docsy.dev/).

You can find detailed theme instructions in the Docsy user guide: https://docsy.dev/docs/


## Getting Started
For small changes or corrections, you can edit files in this repository directly in your browser, and submit a merge request.

For larger changes or contributions, we recommend branching this project and making changes on your own branch before making a submission.

## Running the website locally

Building and running the site locally requires a recent `extended` version of [Hugo](https://gohugo.io).
You can find out more about how to install Hugo for your environment in our
[Getting started](https://www.docsy.dev/docs/getting-started/#prerequisites-and-installation) guide.

Once you've made your working copy of the site repo, from the repo root folder, run

```
hugo server
```

## Running a container locally

You can run docsy-example inside a [Docker](https://docs.docker.com/)
container, the container runs with a volume bound to the `docsy-example`
folder. This approach doesn't require you to install any dependencies other
than [Docker Desktop](https://www.docker.com/products/docker-desktop) on
Windows and Mac, and [Docker Compose](https://docs.docker.com/compose/install/)
on Linux.

1. Build the docker image 

   ```bash
   docker-compose build
   ```

1. Run the built image

   ```bash
   docker-compose up
   ```

   > NOTE: You can run both commands at once with `docker-compose up --build`.

1. Verify that the service is working. 

   Open your web browser and type `http://localhost:1313` in your navigation bar,
   This opens a local instance of the docsy-example homepage. You can now make
   changes to the docsy example and those changes will immediately show up in your
   browser after you save.

### Cleanup

To stop Docker Compose, on your terminal window, press **Ctrl + C**. 

To remove the produced images run:

```console
docker-compose rm
```
For more information see the [Docker Compose
documentation](https://docs.docker.com/compose/gettingstarted/).

## Troubleshooting

As you run the website locally, you may run into the following error:

```
➜ hugo server

INFO 2021/01/21 21:07:55 Using config file: 
Building sites … INFO 2021/01/21 21:07:55 syncing static files to /
Built in 288 ms
Error: Error building site: TOCSS: failed to transform "scss/main.scss" (text/x-scss): resource "scss/scss/main.scss_9fadf33d895a46083cdd64396b57ef68" not found in file cache
```

This error occurs if you have not installed the extended version of Hugo.
See our [user guide](https://www.docsy.dev/docs/getting-started/) for instructions on how to install Hugo.

