
with source as (

    select * from {{ source('raw_salesforce', 'custom_object_user_license_metrics_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        custom_object_id,
        custom_object_name,
        custom_object_type,
        metrics_date,
        object_count,
        system_modstamp,
        user_license_id,
        _fivetran_deleted

    from source

)

select * from renamed
