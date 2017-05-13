<schema xmlns="http://purl.oclc.org/dsdl/schematron" schemaVersion="iso" queryBinding="xslt2">

  <title>Rules for Response Header</title>

  <ns uri="http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader" prefix="sbdh"/>
  <ns uri="urn:fdc:difi.no:2017:payment:extras-1" prefix="e"/>

  <pattern>
    <rule context="e:ReceptionAcknowledgement">
      <assert id="PAYMENT-RA-R001"
              test="e:Version = '1.0'"
              flag="fatal">Version must be '1.0' is required.</assert>
      <assert id="PAYMENT-RA-R002"
              test="sbdh:StandardBusinessDocumentHeader"
              flag="fatal">A header is required.</assert>
    </rule>
  </pattern>
</schema>
