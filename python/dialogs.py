#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
a = input ("Cienijamais lietotaj, ludzu, ievadi skaitli: ")
print "Tu esi ievadijis mainigo, kura datu tips ir: %s"%type(a)
print a * a
print a + a
'''


a = raw_input("Cienijamais lietotaj, ludzu, ievadi savu vardu: ")
b = raw_input("Cienijamais lietotaj, ludzu, ievadi savu uzvardu: ")
print "Tatad, tevi sauc - %s"%(a + ' ' + b)
print "Tatad, tevi sauc - %s"%(a + chr(32) + b)
