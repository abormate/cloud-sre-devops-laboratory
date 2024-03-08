# ------------------------------------------ #
#
# -- Kode Kloud Engineer -- Kubernetes -- Countdown Job --
#
# ------------------------------------------ #

# Look into documentation for Kubernetes for a regular Job template

: '
apiVersion: batch/v1
kind: Job
metadata:
  name: pi
spec:
  template:
    spec:
      containers:
      - name: pi
        image: perl:5.34.0
        command: ["perl",  "-Mbignum=bpi", "-wle", "print bpi(2000)"]
      restartPolicy: Never
  backoffLimit: 4


'