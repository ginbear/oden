# oden
for ConoHa Server

## setup

```
bundle install --path vendor/bundler
```

## itamae

cheat http://qiita.com/fukuiretu/items/170aa956731f2ffb5715

exec

```
bundle exec itamae ssh -u <user> -h <host> -y nodes/config.yaml roles/web.rb
```

### option

dry-run

```
--dry-run
```

debug

```
--log-level=debug
```

### tips

search plugin

```
rbenv exec gem search itamae-plugin-recipe-
```
