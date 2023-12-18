param loadtests_lt_bicep_test_name string = 'lt-bicep-test'
param location string = resourceGroup().location
param user_managed_identity_resource_name string = 'myUserManagedIdentity'

resource user_managed_identity_resource 'Microsoft.ManagedIdentity/userAssignedIdentities@2021-04-01-preview' = {
    name: user_managed_identity_resource_name
    location: location
    properties: {}
}

resource loadtests_lt_bicep_test_name_resource 'Microsoft.LoadTestService/loadtests@2022-12-01' = {
    name: loadtests_lt_bicep_test_name
    location: location
    identity: {
        type: 'UserAssigned'
        userAssignedIdentities: {
            '${user_managed_identity_resource.id}': {}
        }
    }
    properties: {}
}

// use az loadtest test run create, can't be done from bicep or terraform
// can create JMX with https://jmeter.apache.org/index.html
// TODO:  Create a JMX test and a regular one and download the files of each
