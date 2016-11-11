use Rack::Static, urls: ["/images"], root: "public"

App = -> (_env) do
  [
    404,
    {
      "Content-Type" => "text/plain",
      "Cache-Control" => "public, max-age=86400"
    },
    ["Not found"]
  ]
end

run App
