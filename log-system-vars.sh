#!/bin/bash
#$ -N vars_job                              # job name
##$ -M lbarbosa@nd.edu                      # email to send notifications
##$ -m a                                    # [a]borted, [b]egins, [e]nds
#$ -o /scratch365/lbarbosa/backups/stdout/  # stdout
#$ -e /scratch365/lbarbosa/backups/stderr/  # stderr
#$ -pe smp 3                                # single node multiple cores
#$ -t 1-4:1                                 # job array size

# A sample job to test Sun Grid Engine configurations and check environment variables.

# ARC                   – The Sun Grid Engine architecture name of the node on which the job is running; the name is compiled-in into the sge_execd binary
# COMMD_PORT            – Specifies the TCP port on which sge_commd(8) is expected to listen for communication requests
# ENVIRONMENT           – Always set to BATCH; this variable indicates that the script is run in batch mode
# HOME                  – The user?s home directory path from the passwd file
# HOSTNAME              – The host name of the node on which the job is running
# JOB_ID                – A unique identifier assigned by the sge_qmaster when the job was submitted; the job ID is a decimal integer in the range to 99999
# JOB_NAME              – The job name, built from the qsub script filename, a period, and the digits of the job ID; this default may be overwritten by qsub -N
# LOGNAME               – The user?s login name from the passwd file
# NHOSTS                – The number of hosts in use by a parallel job
# NQUEUES               – The number of queues allocated for the job (always 1 for serial jobs)
# NSLOTS                – The number of queue slots used by a parallel job
# SGE_CELL              – The Sun Grid Engine cell in which the job executes
# SGE_CKPT_ENV          – Specifies the checkpointing environment (as selected with the qsub -ckpt option) under which a checkpointing job executes
# SGE_CKPT_DIR          – Only set for checkpointing jobs; contains path ckpt_dir (see the checkpoint manual page) of the checkpoint interface
# SGE_CLUSTER_NAME      – Name of this cluster
# SGE_GPU               – Set of GPU core indices allocated to a GPU job [ comma-separated integers or undefined (default) ]
# SGE_JOB_SPOOL_DIR     – The directory used by sge_shepherd(8) to store jobrelated data during job execution
# SGE_O_HOME            – The home directory path of the job owner on the host from which the job was submitted
# SGE_O_HOST            – The host from which the job was submitted
# SGE_O_LOGNAME         – The login name of the job owner on the host from which the job was submitted
# SGE_O_MAIL            – The content of the MAIL environment variable in the context of the job submission command
# SGE_O_PATH            – The content of the PATH environment variable in the context of the job submission command
# SGE_O_SHELL           – The content of the SHELL environment variable in the context of the job submission command
# SGE_O_TZ              – The content of the TZ environment variable in the context of the job submission command
# SGE_O_WORKDIR         – The working directory of the job submission command
# SGE_ROOT              – The Sun Grid Engine root directory as set for sge_execd before start-up or the default /usr/SGE
# SGE_STDERR_PATH       – The path name of the file to which the standard error stream of the job is diverted; commonly used for enhancing the output with error messages from prolog, epilog, parallel environment start/stop or checkpointing scripts
# SGE_STDOUT_PATH       – The path name of the file to which the standard output stream of the job is diverted; commonly used for enhancing the output with messages from prolog, epilog, parallel environment start/stop or checkpointing scripts
# SGE_TASK_ID           – The task identifier in the array job represented by this task
# SGE_TASK_FIRST        – The first $SGE_TASK_ID in the task array workload
# SGE_TASK_LAST         – The last $SGE_TASK_ID in the task array workload
# SGE_TASK_STEPSIZE     – The step size of $SGE_TASK_ID from $SGE_TASK_FIRST to $SGE_TASK_LAST

echo "ARC                = $ARC"
echo "COMMD_PORT         = $COMMD_PORT"
echo "ENVIRONMENT        = $ENVIRONMENT"
echo "HOME               = $HOME"
echo "HOSTNAME           = $HOSTNAME"
echo "JOB_ID             = $JOB_ID"
echo "JOB_NAME           = $JOB_NAME"
echo "LOGNAME            = $LOGNAME"
echo "NHOSTS             = $NHOSTS"
echo "NQUEUES            = $NQUEUES"
echo "NSLOTS             = $NSLOTS"
echo "SGE_CELL           = $SGE_CELL"
echo "SGE_CKPT_ENV       = $SGE_CKPT_ENV"
echo "SGE_CKPT_DIR       = $SGE_CKPT_DIR"
echo "SGE_CLUSTER_NAME   = $SGE_CLUSTER_NAME"
echo "SGE_GPU            = $SGE_GPU"
echo "SGE_JOB_SPOOL_DIR  = $SGE_JOB_SPOOL_DIR"
echo "SGE_O_HOME         = $SGE_O_HOME"
echo "SGE_O_HOST         = $SGE_O_HOST"
echo "SGE_O_LOGNAME      = $SGE_O_LOGNAME"
echo "SGE_O_MAIL         = $SGE_O_MAIL"
echo "SGE_O_PATH         = $SGE_O_PATH"
echo "SGE_O_SHELL        = $SGE_O_SHELL"
echo "SGE_O_TZ           = $SGE_O_TZ"
echo "SGE_O_WORKDIR      = $SGE_O_WORKDIR"
echo "SGE_ROOT           = $SGE_ROOT"
echo "SGE_STDERR_PATH    = $SGE_STDERR_PATH"
echo "SGE_STDOUT_PATH    = $SGE_STDOUT_PATH"
echo "SGE_TASK_ID        = $SGE_TASK_ID"
echo "SGE_TASK_FIRST     = $SGE_TASK_FIRST"
echo "SGE_TASK_LAST      = $SGE_TASK_LAST"
echo "SGE_TASK_STEPSIZE  = $SGE_TASK_STEPSIZE"
echo "PATH               = $PATH"
