Tests and results

- ArgumentError:

1:
```HTTPoison.post!("http://servIP:8080", {:multipart, [name: "photo", filename: "pixel.jpg"]})```
```
** (ArgumentError) argument error
              :erlang.byte_size(:name)
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:255: :hackney_multipart.mp_data_header/2
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:177: anonymous fn/3 in :hackney_multipart.len_mp_stream/2
     (stdlib) lists.erl:1263: :lists.foldl/3
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:159: :hackney_multipart.len_mp_stream/2
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:319: :hackney_request.handle_body/4
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:81: :hackney_request.perform/2
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney.erl:373: :hackney.send_request/2
```

- CaseClauseError:

```HTTPoison.post!(url, {:multipart, {["form-data"], [chat_id: 237799109], []}, {:file, "files/aphoto.jpg", {["form-data"], [name: "photo", filename: "aphoto.jpg"]}, []}}, [], [])```

```
** (CaseClauseError) no case clause matching: {:multipart, {["form-data"], [chat_id: 237799109], []}, {:file, "files/aphoto.jpg", {["form-data"], [name: "photo", filename: "aphoto.jpg"]}, []}}
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:314: :hackney_request.handle_body/4
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:81: :hackney_request.perform/2
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney.erl:373: :hackney.send_request/2
    (httpoison) lib/httpoison/base.ex:432: HTTPoison.Base.request/9
    (httpoison) lib/httpoison.ex:66: HTTPoison.request!/5
```

FunctionClauseError:

```HTTPoison.post!(url, {:multipart, [{["form-data"], [chat_id: 237799109], []}, {:file, "files/aphoto.jpg", {["form-data"], [name: "photo", filename: "aphoto.jpg"]}, []} ]}, [], [])```

```
** (FunctionClauseError) no function clause matching in anonymous fn/2 in :hackney_multipart.len_mp_stream/2
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:159: anonymous fn({["form-data"], [chat_id: 237799109], []}, 0) in :hackney_multipart.len_mp_stream/2
       (stdlib) lists.erl:1263: :lists.foldl/3
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:159: :hackney_multipart.len_mp_stream/2
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:319: :hackney_request.handle_body/4
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:81: :hackney_request.perform/2
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney.erl:373: :hackney.send_request/2
    (httpoison) lib/httpoison/base.ex:432: HTTPoison.Base.request/9
    (httpoison) lib/httpoison.ex:66: HTTPoison.request!/5
```

```HTTPoison.post!("http://servIP:8080", {:multipart, [{:file, "files/pixel.jpg", {["form-data"], [name: "photo", filename: "pixel.jpg"]}}]})```

```
** (FunctionClauseError) no function clause matching in :lists.map/2
     (stdlib) lists.erl:1238: :lists.map(#Function<3.113924154/1 in :hackney_multipart.mp_file_header/2>, {["form-data"], [name: "photo", filename: "pixel.jpg"]})
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:235: :hackney_multipart.mp_file_header/2
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:164: anonymous fn/3 in :hackney_multipart.len_mp_stream/2
     (stdlib) lists.erl:1263: :lists.foldl/3
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:159: :hackney_multipart.len_mp_stream/2
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:319: :hackney_request.handle_body/4
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:81: :hackney_request.perform/2
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney.erl:373: :hackney.send_request/2
```

```HTTPoison.post!("http://servIP:8080", {:multipart, [{:file, "files/pixel.jpg", {[{"form-data"}], [name: "photo", filename: "pixel.jpg"]}}]})```


```
** (FunctionClauseError) no function clause matching in :lists.map/2
     (stdlib) lists.erl:1238: :lists.map(#Function<3.113924154/1 in :hackney_multipart.mp_file_header/2>, {[{"form-data"}], [name: "photo", filename: pixel.jpg"]})
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:235: :hackney_multipart.mp_file_header/2
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:164: anonymous fn/3 in :hackney_multipart.len_mp_stream/2
     (stdlib) lists.erl:1263: :lists.foldl/3
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:159: :hackney_multipart.len_mp_stream/2
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:319: :hackney_request.handle_body/4
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:81: :hackney_request.perform/2
    (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney.erl:373: :hackney.send_request/2
```


```HTTPoison.post!("http://servIP:8080", {:multipart, [{"photo", {:file, "files/pixel.jpg"}}]})```

```
** (FunctionClauseError) no function clause matching in anonymous fn/2 in :hackney_multipart.len_mp_stream/2
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:159: anonymous fn({"photo", {:file, "files/pixel.jpg"}}, 0) in :hackney_multipart.len_mp_stream/2
       (stdlib) lists.erl:1263: :lists.foldl/3
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:159: :hackney_multipart.len_mp_stream/2
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:319: :hackney_request.handle_body/4
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:81: :hackney_request.perform/2
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney.erl:373: :hackney.send_request/2
    (httpoison) lib/httpoison/base.ex:432: HTTPoison.Base.request/9
    (httpoison) lib/httpoison.ex:66: HTTPoison.request!/5
```

```HTTPoison.post!("http://servIP:8080", {:multipart, {"photo", {:file, "files/pixel.jpg"}}})```

```
** (FunctionClauseError) no function clause matching in :lists.foldl/3
       (stdlib) lists.erl:1262: :lists.foldl(#Function<2.113924154/2 in :hackney_multipart.len_mp_stream/2>, 0, {"photo", {:file, "files/pixel.jpg"}})
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_multipart.erl:159: :hackney_multipart.len_mp_stream/2
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:319: :hackney_request.handle_body/4
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney_request.erl:81: :hackney_request.perform/2
      (hackney) c:/Users/venta/projects/elixir/wrapper/deps/hackney/src/hackney.erl:373: :hackney.send_request/2
    (httpoison) lib/httpoison/base.ex:432: HTTPoison.Base.request/9
    (httpoison) lib/httpoison.ex:66: HTTPoison.request!/5
```

```HTTPoison.post!("http://servIP:8080", {:multipart, [{:file, "files/pixel.jpg", [name: "photo", filename: "pixel.jpg"]}]})```

```
POST / HTTP/1.1
Host: servIP:8080
User-Agent: hackney/1.7.1
Content-Type: multipart/form-data; boundary=---------------------------erwiqjncxosmxlcw
Content-Length: 42726

-----------------------------erwiqjncxosmxlcw
content-length: 42474
content-type: image/jpeg
content-disposition: form-data; name="file"; filename="aphoto.jpg"
name: photo
filename: aphoto.jpg

<photo binary>
-----------------------------erwiqjncxosmxlcw--
```

```HTTPoison.post!("http://servIP:8080", {:multipart, [{:file, "files/pixel.jpg", [name: "\"photo\"", filename: "\"pixel.jpg\""]}]})```

```
POST / HTTP/1.1
Host: servIP:8080
User-Agent: hackney/1.7.1
Content-Type: multipart/form-data; boundary=---------------------------kyorwiszy               qolhtih
Content-Length: 883

-----------------------------kyorwiszyqolhtih
content-length: 631
content-type: image/jpeg
content-disposition: form-data; name="file"; filename="pixel.jpg"
name: "photo"
filename: "pixel.jpg"

<photo binary>
-----------------------------kyorwiszyqolhtih--
```

```HTTPoison.post!("http://servIP:8080", {:multipart, [{"name", "photo"}, {"filename", "pixel.jpg"}]})```

```
POST / HTTP/1.1
Host: servIP:8080
User-Agent: hackney/1.7.1
Content-Type: multipart/form-data; boundary=---------------------------orcrjjknhcjlxugj
Content-Length: 377

-----------------------------orcrjjknhcjlxugj
content-length: 5
content-type: application/octet-stream
content-disposition: form-data; name="name"

photo
-----------------------------orcrjjknhcjlxugj
content-length: 9
content-type: application/octet-stream
content-disposition: form-data; name="filename"

pixel.jpg
-----------------------------orcrjjknhcjlxugj--
```

```HTTPoison.post!("http://servIP:8080", {:multipart, [{"photo", "files/pixel.jpg"}]})```

```
POST / HTTP/1.1
Host: servIP:8080
User-Agent: hackney/1.7.1
Content-Type: multipart/form-data; boundary=---------------------------mgvbohsjfwhmfxty
Content-Length: 221

-----------------------------mgvbohsjfwhmfxty
content-length: 15
content-type: application/octet-stream
content-disposition: form-data; name="photo"

files/pixel.jpg
-----------------------------mgvbohsjfwhmfxty--
```
