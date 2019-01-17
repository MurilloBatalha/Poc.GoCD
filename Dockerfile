FROM microsoft/dotnet:2.2-sdk AS build-env
WORKDIR /app

# copy csproj and restore as distinct layers
COPY ./ /app
RUN dotnet test ./test
RUN dotnet restore ./src
RUN dotnet publish ./src -o out

# build runtime image
FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
COPY --from=build-env /app/out ./
ENTRYPOINT ["dotnet", "PocWeb.dll"]