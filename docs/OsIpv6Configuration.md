# IntersightClient::OsIpv6Configuration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **class_id** | **String** | The fully-qualified name of the instantiated, concrete type. This property is used as a discriminator to identify the type of the payload when marshaling and unmarshaling data. | [default to &#39;os.Ipv6Configuration&#39;] |
| **object_type** | **String** | The fully-qualified name of the instantiated, concrete type. The value should be the same as the &#39;ClassId&#39; property. | [default to &#39;os.Ipv6Configuration&#39;] |
| **ip_v6_config** | [**CommIpV6Interface**](CommIpV6Interface.md) |  | [optional] |

## Example

```ruby
require 'intersight_client'

instance = IntersightClient::OsIpv6Configuration.new(
  class_id: null,
  object_type: null,
  ip_v6_config: null
)
```
