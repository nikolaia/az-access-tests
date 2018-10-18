# Writing tests against Azure with Bats and the Azure Cli

And example of tests you can write against your Azure subscription with Bats and the Azure Cli. Inspired by reading https://medium.com/yld-engineering-blog/testing-kubernetes-rbac-5e00dc93af8eo

```bash
$ npm test

> az-access-tests@1.0.0 test /mnt/c/repos/az-access-tests
> bats tests.bats

 ✓ subscription-id is correct
 ✓ ensure correct owners on subscription

2 tests, 0 failures
```