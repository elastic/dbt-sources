
with source as (

    select * from {{ source('raw_netsuite_sa', 'spider_log') }}

),

renamed as (

    select
        spider_log_id,
        _fivetran_deleted,
        _fivetran_synced,
        configuration_and_stats_lin_id,
        customization_type_id,
        date_created,
        date_deleted,
        documented_record_count,
        is_inactive,
        last_modified_date,
        parent_id,
        spider_count,
        spider_log_extid

    from source

)

select * from renamed
