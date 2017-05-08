#!/usr/bin/python
"""Do the provisioning. If we are re-provisioning don't run the same script
twice.

We will support two types of provision files:

1) .sh  Shell scripts to be run as root
2) .py  Python files to be run as root

The Python and AMBA provisioners can only work after the ADS is installed.
"""
import os
import sys
import logging
import subprocess

LOGGER = logging.getLogger(__name__)
PROVISION_DIR = '/vagrant/provision'
PROGRESS_DIR = 'progress'


def configure_logging():
    """Configure the logging :-)"""
    logging.basicConfig(
        level=logging.DEBUG,
        format='%(asctime)s %(levelname).1s %(name)-10s %(message)s',
        datefmt='%y%m%d %H%M%S'
    )


def do_provision_sh(file_name):
    """Run this shell script provisioner"""
    return subprocess.call([file_name])


def do_provision_py(file_name):
    """Run this Python script"""
    return subprocess.call(['/usr/bin/python', file_name])


def do_provision():
    """Run each provision script. Don't run the same script twice."""
    if not os.path.isdir(PROGRESS_DIR):
        LOGGER.info('Creating the progress directory: %s', PROGRESS_DIR)
        os.mkdir(PROGRESS_DIR)
    provision_file_names = sorted(os.listdir(PROVISION_DIR))
    finished_provision_names = os.listdir(PROGRESS_DIR)
    for provision_file_name in provision_file_names:
        if provision_file_name in finished_provision_names:
            continue
        LOGGER.info('Running %s', provision_file_name)
        provision_full_name = os.path.join(PROVISION_DIR, provision_file_name)
        extension = provision_file_name.split('.')[-1].lower()
        if extension == 'py':
            retval = do_provision_py(provision_full_name)
        elif extension == 'sh':
            retval = do_provision_sh(provision_full_name)
        else:
            LOGGER.warning('Unknown provision type: %s', provision_file_name)
            retval = 1
        if retval != 0:
            return retval
        open(os.path.join(PROGRESS_DIR, provision_file_name), 'w').close()
    return 0

def main():
    """Run all the provisioning scripts"""
    configure_logging()
    return do_provision()

sys.exit(main())
