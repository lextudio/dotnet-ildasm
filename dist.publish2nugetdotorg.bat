nuget update /self
for %%f in (.\nupkg\*.nupkg) do nuget push %%f -Source https://www.nuget.org/api/v2/package
