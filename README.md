# ocsinventory-agent Cookbook

This cookbook installs and configure ocsinventory-agent

## Requirements

### Supported Platforms

The following 64-bit platforms are supported:

* CentOS 7.0
* Ubuntu 14.04 LTS

### Cookbooks

* [apt](https://supermarket.getchef.com/cookbooks/apt) Chef LWRP Cookbook
* [yum](https://supermarket.getchef.com/cookbooks/yum) Chef LWRP Cookbook

## Attributes

| attribute                                  | Type      | Default                    | description                              |
|:-------------------------------------------|:---------:|:--------------------------:|:-----------------------------------------|
| `node['ocsinventory']['agent']['package']` | `String`  | `ocsinventory-agent`       | ocsinventory-agent package               |
| `node['ocsinventory']['agent']['server'] ` | `String`  | `localhost`                | OCS-Server address                       |
| `node['ocsinventory']['agent']['tag']`     | `String`  | `''`                       | Client Tag                               |

## Usage

#### ocsinventory-agent::default

Just include `ocsinventory-agent` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[ocsinventory-agent]"
  ]
}
```

## Contributing

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Copyright 2015, Dennis Pattmann

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
