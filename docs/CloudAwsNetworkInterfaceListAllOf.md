# IntersightClient::CloudAwsNetworkInterfaceListAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The total number of &#39;cloud.AwsNetworkInterface&#39; resources matching the request, accross all pages. The &#39;Count&#39; attribute is included when the HTTP GET request includes the &#39;$inlinecount&#39; parameter. | [optional] |
| **results** | [**Array&lt;CloudAwsNetworkInterface&gt;**](CloudAwsNetworkInterface.md) | The array of &#39;cloud.AwsNetworkInterface&#39; resources matching the request. | [optional] |

## Example

```ruby
require 'intersight_client'

instance = IntersightClient::CloudAwsNetworkInterfaceListAllOf.new(
  count: null,
  results: null
)
```
