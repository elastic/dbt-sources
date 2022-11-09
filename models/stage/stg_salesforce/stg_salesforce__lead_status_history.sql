
with source as (

    select * from {{ source('raw_salesforce', 'lead_status_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        api_name,
        created_by_id,
        created_date,
        is_converted,
        is_default,
        last_modified_by_id,
        last_modified_date,
        master_label,
        sort_order,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
