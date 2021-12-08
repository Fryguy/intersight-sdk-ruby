# IntersightClient::IppoolIpV4Config

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **class_id** | **String** | The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. | [default to &#39;ippool.IpV4Config&#39;] |
| **object_type** | **String** | The fully-qualified name of the instantiated, concrete type. The value should be the same as the &#39;ClassId&#39; property. | [default to &#39;ippool.IpV4Config&#39;] |
| **gateway** | **String** | IP address of the default IPv4 gateway. | [optional] |
| **netmask** | **String** | A subnet mask is a 32-bit number that masks an IP address and divides the IP address into network address and host address. | [optional] |
| **primary_dns** | **String** | IP Address of the primary Domain Name System (DNS) server. | [optional] |
| **secondary_dns** | **String** | IP Address of the secondary Domain Name System (DNS) server. | [optional] |

## Example

```ruby
require 'intersight_client'

instance = IntersightClient::IppoolIpV4Config.new(
  class_id: null,
  object_type: null,
  gateway: null,
  netmask: null,
  primary_dns: null,
  secondary_dns: null
)
```
