<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schemaVersion="iso" queryBinding="xslt2">

  <title>Rules for Response Header</title>

  <ns uri="http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader" prefix="sbdh"/>
  <ns uri="urn:fdc:difi.no:2017:payment:extras-1" prefix="e"/>

  <pattern>
    <rule context="e:HandlingException">
      <assert id="PAYMENT-HE-R001"
              test="e:Version = '1.0'"
              flag="fatal">Version must be '1.0' is required.</assert>
      <assert id="PAYMENT-HE-R002"
              test="e:Exception"
              flag="fatal">An exception is required.</assert>
      <assert id="PAYMENT-HE-R003"
              test="sbdh:StandardBusinessDocumentHeader"
              flag="fatal">A header is required.</assert>
    </rule>
    <rule context="e:Exception">
      <assert id="PAYMENT-HE-R010"
              test="e:Code"
              flag="fatal">An exception code is required.</assert>
      <assert id="PAYMENT-HE-R011"
              test="e:Description != ''"
              flag="fatal">An exception description is required.</assert>
    </rule>
    <rule context="e:Code">
      <assert id="PAYMENT-HE-100"
              test="some $code in tokenize('001 002 003 004 005', '\s') satisfies $code = ."
              flag="fatal">Exception code must be according to code list.</assert>
    </rule>
  </pattern>
</schema>
