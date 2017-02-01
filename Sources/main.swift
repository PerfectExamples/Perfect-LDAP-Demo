//
//  main.swift
//  Perfect-LDAP-Demo
//
//  Created by Rocky Wei on 2017-01-30.
//	Copyright (C) 2017 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2017 - 2018 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//
import PerfectLDAP

let dn = "CN=judy,CN=Users,DC=perfect,DC=com"
let password = "0penLDAP"
let url = "ldap://192.168.56.15"
let base = "CN=Users,DC=perfect,DC=com"
let scope: LDAP.Scope = .SUBTREE

let cred = LDAP.Login(binddn: dn, password: password)

let ld = try LDAP(url: url, loginData: cred)
do {
  let r = try ld.search(base:base, scope:scope)
  print(r)
}catch (let err) {
  print("Error: \(err)")
}
