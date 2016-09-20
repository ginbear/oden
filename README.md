# oden
[2016-09-21 01:27]
for ConoHa Server

## setup

```
bundle install --path vendor/bundler
```

## itamae

cheat http://qiita.com/fukuiretu/items/170aa956731f2ffb5715

dry-run

```
itamae ssh -u <host> -h <host> --dryn-run roles/web.rb
```

exec

```
itamae ssh -u <host> -h <host> roles/web.rb
```

debug

```
itamae ssh -u <host> -h <host> --log-level=debug roles/web.rb
```

### tips

search plugin

```
rbenv exec gem search itamae-plugin-recipe-
@@@

