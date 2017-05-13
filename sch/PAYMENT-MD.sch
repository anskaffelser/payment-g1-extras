<schema xmlns="http://purl.oclc.org/dsdl/schematron" schemaVersion="iso" queryBinding="xslt2">

  <title>Rules for Metadata</title>

  <ns uri="urn:fdc:difi.no:2017:payment:extras-1" prefix="e"/>

  <pattern>
    <rule context="e:Metadata">
      <assert id="PAYMENT-MD-R001"
              test="e:Version = '1.0'"
              flag="fatal">Version must be '1.0' is required.</assert>
      <assert id="PAYMENT-MD-R010"
              test="e:SenderIdentifier"
              flag="fatal">Sender is required.</assert>
    </rule>
  </pattern>
</schema>
