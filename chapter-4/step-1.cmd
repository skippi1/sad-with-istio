kubectl.exe apply -n istio-system -f request-authentication.yaml 

-- powers1hell
$VALID_TOKEN="eyJhbGciOiJSUzI1NiIsImtpZCI6IkRIRmJwb0lVcXJZOHQyenBBMnFYZkNtcjVWTzVaRXI0UnpIVV8tZW52dlEiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJib3V0aXF1ZXN0b3JlLmNvbSIsImV4cCI6MTkxNDM2NTM2NSwiaWF0IjoxNTk5MDA1MzY1LCJpc3MiOiJ0ZXN0aW5nQHNlY3VyZS5pc3Rpby5pbyIsInN1YiI6InVzZXIxQHh5ei5jb20ifQ.pZHGJgEP0qsJ1pSBPU6nwpMETf3MqlWx-T0PED0BLb5aTnbXWklIzHV4JHgMk6Td4thI4cC4_mCvrFlgm1uqzO2U_DEdNOReNMGNnDSQ87hWEtOQxn50c83dVq3-w4FUrKBjS1lYhiabKWVfr3BC_Bmwefl1TVhgP_iNuQGsWsj_Tcl4TWP93yS93DazphAl0uIOw3WvmJSfhnaZ7cEIk0PzGmsLq96FLbGatZX1DL8OKhv2Hz-iN0V6KG_5GjjEdD7LVSprw4oedtwbahDVVuxh0due1DImXLhH9oH1_RkntrD98JlKYoNzG1-7apSV0xw5mlE8L2HXDo3TKE33WA"
echo $VALID_TOKEN

curl.exe -v -H "Authorization: Bearer $VALID_TOKEN" http://127.0.0.1:50466/_healthz