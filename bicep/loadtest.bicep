param loadtests_lt_bicep_test_name string = 'lt-bicep-test'
param location string = resourceGroup().location

resource loadtests_lt_bicep_test_name_resource 'Microsoft.LoadTestService/loadtests@2022-12-01' = {
    name: loadtests_lt_bicep_test_name
    location: location
    identity: {
        type: 'SystemAssigned'
    }
    properties: {}
}

output load_test_name string = loadtests_lt_bicep_test_name_resource.name
output load_test_id string = loadtests_lt_bicep_test_name_resource.id

// use az loadtest test run create, can't be done from bicep or terraform
// can create JMX with https://jmeter.apache.org/index.html
// TODO:  Create a JMX test and a regular one and download the files of each
