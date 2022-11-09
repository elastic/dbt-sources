
with source as (

    select * from {{ source('raw_salesforce', 'call_center') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        adapter_url,
        created_by_id,
        created_date,
        custom_settings,
        internal_name,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        version

    from source

)

select * from renamed
