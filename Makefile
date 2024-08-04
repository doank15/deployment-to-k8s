build: 
	docker build -t node-image .
tag-image:
	docker image tag react-example-image maithedoan/node-image
kube-logs:
	kubectl logs sample-node-app-64b5487587-tczmm
kube-deploy:
	kubectl apply -f deployment.yaml
kube-service:
	kubectl apply -f service.yaml
minikube-dashboard:
	minikube dashboard
kube-access-service:
	minikube service node-service --url
kube-scale-up:
	kubectl scale deployment sample-node-app --replicas=3