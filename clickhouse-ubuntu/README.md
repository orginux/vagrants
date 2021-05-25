# clickhouse-server on Ubuntu 20.04
## Obtaining Tables from Prepared Partitions
Anonymized Yandex.Metrica Data:
```bash
curl -O https://datasets.clickhouse.tech/hits/partitions/hits_v1.tar # size 1.2G
tar xvf hits_v1.tar -C /var/lib/clickhouse                           # path to ClickHouse data directory ()

# check permissions on unpacked data, fix if required
sudo service clickhouse-server restart
clickhouse-client --query "SELECT COUNT(*) FROM datasets.hits_v1"
```

See [clickhouse](https://clickhouse.tech/docs/en/getting-started/example-datasets/) for more examples.
