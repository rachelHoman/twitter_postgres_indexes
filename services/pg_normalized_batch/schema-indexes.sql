set max_parallel_maintenance_workers = 60;
set max_parallel_workers = 60;
set maintenance_work_mem to '4 GB';
create index on tweet_tags(id_tweets, tag);
create index on tweet_tags(tag, id_tweets);
create index on tweets(id_tweets, lang);
create index on tweets(lang);
create index idx_tweets_text_gin on tweets using GIN(to_tsvector('english', text)) where lang = 'en';
