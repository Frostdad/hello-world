## hello-world

## Sample Tool Stack : Jenkins, Docker

Hi,

This is a simple harness for spring-boot app.

Consists of two docker containers:
- fetchr
  - runs Jenkins and builds spring app
- spring
  - openjdk alpine based app runner

Assumptions: Ubuntu/Debian Linux distro

1. Setup docker
```
docker_setup.sh
```
2. Setup whole environment
```
fetchr.sh
```
3. Check if app is up and running `http:\\localhost:5000`, Jenkins is at `http:\\localhost:8080`

4. Cleanup
```
cleanup.sh
```

### What is being created

  Jenkins container is a clone of jenkins:jenkins

  Spring container is openjdk alpine for size and simplicity.

#### What's been left out due to time constraints

Switch to jenkins alpine.

Have Jenkins build Spring app image and deploy to it instead of having external call.

Add tests (even simple ones to hit endpoint to see if it's up)

It's pretty barebone, but I'll happily talk it over.


Best Regards

Denis Frost
