# Set the working application directory
# working_directory "/path/to/app"
working_directory "/home/ec2-user/curriculum_vitae"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/ec2-user/curriculum_vitae/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/home/ec2-user/curriculum_vitae/log/unicorn.log"
stdout_path "/home/ec2-user/curriculum_vitae/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.curriculum_vitae.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
 
