## compute persist time in capi

from datetime import datetime, timedelta
samplekey = "XDCR_TIMING_ceb0558e085f4db1a2e707f3a2d6a21d"

f = open("capi.log")
str2 = "finish persisting doc for  key (<<"
str1 = "getmeta before updating the doc for  key (<<"
for line in f.readlines():
    ## print line
    if line.find(str1) > 1:
        pos = line.find(str1) + len(str1) + 1
        key = line[pos:pos+len(samplekey)]
        time1 = line[23:35]
        key2 = str2+ "\"" +key + "\">>)"
        ##print key, key2

        f2 = open("capi.log")
        time2 = "0"
        for line2 in f2.readlines():
            if line2.find(key2) > 1:
                time2 = line2[23:35]
                break
        f2.close()

        t1 = datetime.strptime(time1, "%H:%M:%S.%f") 
        if time2 != "0":
            t2 = datetime.strptime(time2, "%H:%M:%S.%f")
            [h1, m1, s1] = time1.split(":") ##            print key, time1, time2, delta, millis
            [h2, m2, s2] = time2.split(":") ##            print key, time1, time2, delta, millis
            t = (float(h2) - float(h1))*60*60 + (float(m2) - float(m1))*60 +  (float(s2) - float(s1))
            if t > 0:
                print t*1000

f.close()
