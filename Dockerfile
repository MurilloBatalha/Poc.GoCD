FROM microsoft/dotnet:2.1.301-sdk AS build-env
WORKDIR /app

# copy csproj and restore as distinct layers
COPY ./src /app
RUN dotnet restore
RUN dotnet publish -o out

# build runtime image
FROM microsoft/dotnet:runtime
WORKDIR /app
COPY --from=build-env /app/out ./
ENTRYPOINT ["dotnet", "PocWeb.dll"]