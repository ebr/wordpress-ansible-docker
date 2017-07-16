vagrant:
	vagrant up --no-provision
	ansible-playbook -i hosts main.yml --limit vagrant

ec2:
	ansible-playbook -i hosts main.yml

.DEFAULT_GOAL = vagrant
