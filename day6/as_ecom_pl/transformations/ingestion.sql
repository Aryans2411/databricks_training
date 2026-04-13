create streaming table sales_pl as 
select *, current_timestamp as ingestion_date, _metadata.file_path as path from stream read_files("/Volumes/dev/naval/raw/pipeline/sales/", format => 'csv');

create streaming table customers_pl as 
select *, current_timestamp as ingestion_date, _metadata.file_path as path from stream read_files("/Volumes/dev/naval/raw/pipeline/customers/", format => 'csv');

create streaming table products_pl as 
select *, current_timestamp as ingestion_date, _metadata.file_path as path from stream read_files("/Volumes/dev/naval/raw/pipeline/products/", format => 'csv');