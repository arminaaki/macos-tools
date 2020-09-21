
JOB_NAME=com.arminaaki.janitor
JOB_FILE=$(JOB_NAME).plist
PROGRAM_NAME=janitor
FREQUENCY=10

install:
	@echo "Setting Frequency to $(FREQUENCY)"
	cp $(PROGRAM_NAME) /usr/local/bin/
	sed "s/FREQUENCY/$(FREQUENCY)/" $(JOB_FILE).tpl > $(JOB_FILE)
	mv $(JOB_FILE) ~/Library/LaunchAgents/
	launchctl load ~/Library/LaunchAgents/$(JOB_FILE)

list:
	launchctl list $(JOB_NAME)

start: install
	launchctl start $(JOB_NAME)

stop:
	launchctl stop $(JOB_NAME)

clean: stop
	launchctl unload ~/Library/LaunchAgents/$(JOB_FILE)
	rm -f /usr/local/bin/$(PROGRAM_NAME)
	rm -f ~/Library/LaunchAgents/$(JOB_FILE)
