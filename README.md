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
        "code": "0000",
        "result": [
            {
              "EMP_NO": [
                "V0332"
              ],
              "EMP_NM_C": [
                "楊*華"
              ],
              "ALIAS_E": [
                "J**g"
              ],
              "BIR_DT": [
                "1964/07/04"
              ],
              "SEX_CD": [
                "M"
              ],
              "HEIGHT": [
                "1*7"
              ],
              "WEIGHT": [
                "7*"
              ],
              "UNT_CD": [
                "V**0"
              ],
              "UNT_NM_C": [
                "航***心"
              ],
              "TIT_CD": [
                "M3100"
              ],
              "TIT_NM_C": [
                "經理"
              ],
              "TIT_EFF_DT": [
                "2016/06/01"
              ],
              "LEVLA": [
                "M3.1"
              ],
              "LEVLB": [
                ""
              ],
              "CNTY_CD": [
                "TW"
              ],
              "BIR_CD": [
                "***"
              ],
              "BLOOD": [
                "A"
              ],
              "MRG_CD": [
                "Y"
              ],
              "CIT_NO": [
                "U12***5"
              ],
              "EDU_CD": [
                "P"
              ],
              "SOC_NO": [
                ""
              ],
              "PAS_NO": [
                ""
              ],
              "TRN_CD": [
                ""
              ],
              "TRN_DT": [
                ""
              ],
              "TEL_OF": [
                ""
              ],
              "TEL_OE": [
                ""
              ],
              "TEL_HM": [
                "09***0"
              ],
              "VIP_ACT_TEL": [
                "0***0"
              ],
              "E_MAIL_H": [
                "j***g@vair.com.tw"
              ],
              "ADD_HC": [
                "新北********之2"
              ],
              "ADD_RC": [
                "新北********樓"
              ],
              "EFF_DT": [
                "2016/06/01"
              ],
              "LEG_DT": [
                "2016/06/01"
              ],
              "LEFT_DT": [
                ""
              ],
              "ARRV_DT": [
                ""
              ],
              "TAMP_DT": [
                ""
              ],
              "RETURN_DT": [
                ""
              ],
              "REFER": [
                ""
              ],
              "ACCU_DY": [
                "2"
              ],
              "LEF_CD": [
                ""
              ],
              "CTDT": [
                "2016/05/16"
              ],
              "CTUR": [
                "V0***6"
              ],
              "UPDT": [
                "2016/06/01"
              ],
              "UPUR": [
                "V0026"
              ],
              "PASSPORT_EN_NM": [
                "Ch****g"
              ],
              "PASSPORT_NO": [
                ""
              ],
              "PASSPORT_DATE": [
                ""
              ],
              "IS_DEP_HEAD": [
                "N"
              ],
              "IS_CREW": [
                "N"
              ],
              "CM_1": [
                ""
              ],
              "CM_2": [
                ""
              ],
              "CM_3": [
                ""
              ],
              "CM_4": [
                ""
              ],
              "CM_5": [
                ""
              ],
              "CM_6": [
                ""
              ],
              "CM_7": [
                ""
              ],
              "CM_8": [
                ""
              ],
              "CM_9": [
                ""
              ],
              "CM_10": [
                ""
              ]
            }
          ]
        }