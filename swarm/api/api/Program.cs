var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => $"Hello World from C# on { System.Net.Dns.GetHostEntry(string.Empty).HostName }\napi version 1.0");

app.Run();
