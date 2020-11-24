FROM mcr.microsoft.com/dotnet/nightly/sdk:5.0 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY ["TestProject.sln", "TestProject.sln"]
COPY ["src/TestProject.Api/TestProject.Api.csproj", "src/TestProject.Api/"]
COPY ["src/TestProject.Domain/TestProject.Domain.csproj", "src/TestProject.Domain/"]
RUN dotnet restore

# copy everything else and build app
COPY . .
WORKDIR "/app/src/TestProject.Api"
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/nightly/aspnet:5.0 AS runtime
WORKDIR /app
COPY --from=build "/app/src/TestProject.Api/out" "./"
ENTRYPOINT ["dotnet", "TestProject.Api.dll"]