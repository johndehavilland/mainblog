Notes for building.

In dev mode use this: 
    docker run -it -p 1313:1313 -v "${PWD}:/src" hugo-147.7

In prod mode use this:
    docker run -it -v "${PWD}:/src" -e HUGO_MODE=build -e HUGO_CONFIG="config.prd.toml"  -e HUGO_BASEURL="<new base url>" hugo-147.7