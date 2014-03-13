#!/bin/bash/

mongo << 'EOF'

config = {_id: 'fortahost_shard01', members: [
    {_id: 0, host:'199.195.214.137:27017'},
    {_id: 1, host:'199.195.214.137:27018'},
    {_id: 2, host:'199.195.214.137:27019'}]
    }

rs.initiate(config)

'EOF'
