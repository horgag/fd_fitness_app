#!/bin/bash

#fetch latest schema
get-graphql-schema https://api-eu-central-1.graphcms.com/v2/ckl4xdv1rjles01ywg3tnhmkc/master > lib/data/graphql/schema/schema.graphql
# fix schema
sed -i '' 's/update:/updateIt:/g' lib/data/graphql/schema/schema.graphql
sed -i '' 's/systemDateTimeFieldVariation: _SystemDateTimeFieldVariation/systemDateTimeFieldVariation: SystemDateTimeFieldVariation/g' lib/data/graphql/schema/schema.graphql
sed -i '' 's/enum _SystemDateTimeFieldVariation/enum untitled/g' lib/data/graphql/schema/schema.graphql
flutter pub run build_runner build --delete-conflicting-outputs