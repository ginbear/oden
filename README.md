# oden
for ConoHa Server

## setup

```
bundle install --path vendor/bundler
```

## itamae

cheat http://qiita.com/fukuiretu/items/170aa956731f2ffb5715

dry-run

```
bundle exec itamae ssh -u <user> -h <host> --dryn-run roles/web.rb
```

exec

```
bundle exec itamae ssh -u <user> -h <host> roles/web.rb
```

debug

```
bundle exec itamae ssh -u <user> -h <host> --log-level=debug roles/web.rb
```

### tips

search plugin

```
rbenv exec gem search itamae-plugin-recipe-
```
