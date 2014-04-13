socket = "/var/run/criu_service.socket"
images = "/tmp/dump_test"
log = "dump.log"
pid = 4823

c = CRIU.new
p c.set_pid pid
p c.set_images_dir images
p c.set_service_address socket
#p c.set_shell_job true
p c.set_log_file log

p c.dump
