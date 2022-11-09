
with source as (

    select * from {{ source('raw_salesforce', 'additional_number_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        call_center_id,
        created_by_id,
        created_date,
        description,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        phone,
        system_modstamp

    from source

)

select * from renamed
