    #!/bin/bash
    nvidia-smi --query-gpu=utilization.gpu,memory.used,memory.total --format=csv,noheader,nounits | awk -F', ' '{printf " %s%% - %sMiB/%sMiB\n", $1, $2, $3}'
