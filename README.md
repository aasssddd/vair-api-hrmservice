# HRM API Wrapper

## Description
Wrap HRM API for futher use, and host on ECS, access control via AWS API Gateway

## EndPoints

#### Get User

##### Method
POST

##### URL
    http://somehost:someport/hrm/getUser

##### Payload
    {
        "name": "xxx",
        "empno": "xxx",
        "mindate": "yyyyMMdd",
        "maxdate": "yyyyMMdd",
        "svid": "xxx"
    }

##### Result
    {

    }