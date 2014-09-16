#!/usr/bin/env python
# coding: utf-8
#
import xmlrpclib
import subprocess
from SimpleXMLRPCServer import SimpleXMLRPCServer

def run(*args):
    return subprocess.check_output(args)

server = SimpleXMLRPCServer(("0.0.0.0", 8000))
print "Listening on port 8000..."
server.register_function(run, "run")
server.serve_forever()
