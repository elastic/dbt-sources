
with source as (

    select * from {{ source('raw_salesforce', 'lightning_toggle_metrics_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_deleted,
        _fivetran_synced,
        action,
        id,
        metrics_date,
        record_count,
        system_modstamp,
        user_id

    from source

)

select * from renamed
