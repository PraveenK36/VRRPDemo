### Step1: Start containers
docker-compose up -d

### Step2: Start Continuous ping
bash ./ping_ip.sh

### Step2: Validate that ping outputs Router 1 as master

🟢 ROUTER 1 is ACTIVE (MASTER)

### Step3: In another terminal, kill the master
docker stop vrrp-router1

### Step4: Validate that ping outputs Router 2 as master
You should see the master getting changed to Router 2 in the terminal
where Continuous ping is running

🔵 ROUTER 2 is ACTIVE (MASTER)


