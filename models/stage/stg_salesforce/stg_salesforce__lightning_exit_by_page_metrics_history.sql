
with source as (

    select * from {{ source('raw_salesforce', 'lightning_exit_by_page_metrics_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_deleted,
        _fivetran_synced,
        id,
        metrics_date,
        page_name,
        record_count,
        system_modstamp,
        user_id

    from source

)

select * from renamed
