# set up an alias to run skopeo
alias skopeo='docker run --rm luebken/skopeo skopeo'

# use alias to run skopeo as thought it were an installed tool
skopeo inspect --raw docker://alpine
    # Unable to find image 'luebken/skopeo:latest' locally
    # latest: Pulling from luebken/skopeo
    # 2bf01635e2a0: Pull complete
    # 6a665ee2ceac: Pull complete
    # Digest: sha256:67a226113379f5e61bf23393a9f168e09b01900703d6cbc4ab53ece7359645b4
    # Status: Downloaded newer image for luebken/skopeo:latest
    # {
    # "schemaVersion": 2,
    # "mediaType": "application/vnd.docker.distribution.manifest.v2+json",
    # "config": {
    #     "mediaType": "application/vnd.docker.container.image.v1+json",
    #     "size": 1512,
    #     "digest": "sha256:196d12cf6ab19273823e700516e98eb1910b03b17840f9d5509f03858484d321"
    # },
    # "layers": [
    #     {
    #         "mediaType": "application/vnd.docker.image.rootfs.diff.tar.gzip",
    #         "size": 2206931,
    #         "digest": "sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde"
    #     }
    # ]
    # }

# use jq to pretty-print and colourise results
skopeo inspect --raw docker://alpine | jq -C
