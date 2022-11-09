
with source as (

    select * from {{ source('raw_netsuite', 'spider_log_history') }}

),

renamed as (

    select
        configuration_and_stats_lin_id,
        customization_type_id,
        date_created,
        documented_record_count,
        is_inactive,
        last_modified_date,
        parent_id,
        spider_count,
        spider_log_extid,
        spider_log_id

    from source

)

select * from renamed
