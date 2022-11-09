
with source as (

    select * from {{ source('raw_salesforce', 'lightning_toggle_metrics') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        action,
        metrics_date,
        record_count,
        system_modstamp,
        user_id

    from source

)

select * from renamed
