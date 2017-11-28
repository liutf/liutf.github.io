---
title: highlight-test
date: 2017-11-16 09:46:22
categories: DEV
tags: [DEV]
---

#  highlight-test

```java
 @Test
    public void aaaa(){
        System.out.println(JSON.toJSON(new RestResponse().success()));
        System.out.println(JSON.toJSON(new RestResponse().error()));

        TUser tUser = new TUser().setName("aaa").setPassword("bbb").success();
        System.out.println(JSON.toJSON(tUser));
    }
```

