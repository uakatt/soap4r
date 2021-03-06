#!/usr/bin/env ruby
# encoding: ASCII-8BIT

$serverName = 'SOAP::Lite'

$server = 'http://services.soaplite.com/interop.cgi'

require 'clientBase'

drv = SOAP::RPC::Driver.new($server, InterfaceNS)
methodDef(drv)

doTestBase(drv)
doTestGroupB(drv)
submitTestResult
