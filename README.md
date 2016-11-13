# schwad

Built on [camping](https://www.github.com/camping/camping).

An homage to the tech brought into the world by \_why.

## Current Issues

* ~ActiveRecord::RecordNotFound at /
Couldn't find Schwad::Models::SchemaInfo with 'id'=first~

^^^ Problems with Schwad::Models.create_schema. May have to do with newer versions of activerecord.

-- Note to self, consider phusion passenger for deployment as it does list support. https://www.phusionpassenger.com/library/deploy/config_ru.html
