# Skeleton Django web application project

This project is intended to be a quick start that will leave you with a Django development environment & a new Django project.

## Get the code from git.
```
git clone https://github.com/HA247RethinkIT/django-docker-springboard.git
cd django-docker-springboard
```

## Build the base images
```
docker-compose build
```

## Run the Django commands within the container.

### Start you're new Django project
```
docker-compose run web django-admin startproject my_project .
```

 Modify you projects `code/my_project/settings.py`, Replace the current DATABASES with 
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'my_project_db',
        'USER': 'user',
        'PASSWORD': 'changeme',
        'HOST': 'db',
        'PORT': 3306,
    }
}
```

### Starting the project
```
docker-compose up -d
```
You can now  brows http://localhost:8000

### Run the initial migrate and construct the database
```
docker-compose run web python manage.py migrate
```

### Super user access, if a user does not exist then you must creat one
```
docker-compose run web python manage.py createsuperuser
```

