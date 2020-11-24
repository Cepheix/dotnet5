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
```