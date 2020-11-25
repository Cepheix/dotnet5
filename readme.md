## Add new solution and project

```sh
# new solution
$ dotnet new sln

# new project
$ mkdir $some_project
$ cd $some_project
$ dotnet new <template>

# add project to the solution
$ dotnet sln add $some_project/$some_project.csproj

# add reference
$ cd $some_project_path
$ dotnet add reference $some_project/$some_project.csproj
```

## Run locally

```sh
$ dotnet run --project ./src/TestProject.Api/TestProject.Api.csproj
```

## Run docker

```sh
$ docker build -t testapp .
$ docker run -p 5555:80 -e ASPNETCORE_ENVIRONMENT="Development" testapp
```