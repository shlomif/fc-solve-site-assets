REMOTE_URL = hostgator:domains/fc-solve/public_html/downloads
DEST = dest

RSYNC = rsync -a --progress -v --inplace

all:

download:
	$(RSYNC) $(REMOTE_URL)/ $(DEST)

upload:
	$(RSYNC) $(DEST)/ $(REMOTE_URL)
