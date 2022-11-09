
with source as (

    select * from {{ source('raw_salesforce', 'branding_set_property_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        branding_set_id,
        created_by_id,
        created_date,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        property_name,
        property_value,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
