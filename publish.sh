#!/bin/bash

tar -zcvf site.tar.gz -C site .

curl --oauth2-bearer "${SOURCEHUT_PERSONAL_ACCESS_TOKEN}" \
     -Fcontent=@site.tar.gz \
     -Fprotocol=GEMINI \
     https://pages.sr.ht/publish/suzumiyaaoba.srht.site

	
