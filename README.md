# Utilities for MacOS

## Janitor

A simple background job that removes:

  * Files/folders in `~/.Trash`
  * All unused Docker containers, networks, images, and volumes.

### Installing
The bundled Makefile handles setting up the job. The default job frequency is set to `10` secconds. However, the frequency can be overriden by:
```
  $ make FREQUENCY=60 install
```

### Debugging
The background job logs can be viewed via:
```
  $ log show --predicate 'eventMessage contains "Janitor"' --last 30m
```
