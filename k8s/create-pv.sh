echo "creating persistent volume and it's claim for database..."

kubectl apply -f ./database/persistentvolume.yml
kubectl apply -f ./database/persistentvolumeclaim.yml
kubectl apply -f ./static-pv.yml
kubectl apply -f ./static-pvc.yml

echo "persistent volume and it's claim for database, frontend and backend(shared fe and be) created"